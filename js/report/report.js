(function (){
	var app = angular.module('djland.report',['djland.api','ui.bootstrap']);

	app.controller('reportController',function(call,$filter,$scope){
		this.show_filter = 'all';
		var date = new Date();
		this.to = $filter('date')(date,'yyyy/MM/dd');
		this.from = $filter('date')(date.setDate(date.getDate() - 1),'yyyy/MM/dd');
		this.member_id = $('#member_id').text();
		this.show_names = Array();
		this.type = 'crtc';
		var this_ = this;
		this.loading = true;

		this.init = function(){
			//Initial loading requests

			call.getMemberShows( this.member_id ).then(function(response){
				this_.shows = response.data.shows;
			});
			call.getMemberPermissions(this.member_id).then(function(response){
				if(response.data.administrator == '1' || response.data.staff == '1' ){
					this_.is_admin = true;
				}else{
					this_.is_admin = false;
				}

			},function(error){

			});
			this.report();
		}
		this.report = function(){
			this_ = this;
			$('#report_summary').addClass('invisible');
			$('#report_list').addClass('invisible');
			this.loading = true;
			call.getReport(this.member_id,this.show_filter,$filter('date')(this.from, 'yyyy/MM/dd'),$filter('date')(this.to,'yyyy/MM/dd')).then(
				function(response){
					console.log(response);
					this_.playsheets = response.data.playsheets.length > 0 ? angular.copy(response.data.playsheets) : Array();
					this_.totals = response.data.totals;
					console.log(this_.totals);
					console.log(this_.playsheets);
					this_.loading = false;
					//delay displaying so to reduce lag from object creation.
					setTimeout(function(){
						this_.loadGrid();

						if(this_.playsheets.length > 0){

							$('#report_summary').removeClass('invisible');
							$('#report_list').removeClass('invisible');
						}
					},1000);
				},function(error){
					alert("Please try disabling adblock");
				}
			);

		}
		this.toggle_print = function(element){
			var button = $('#print_friendly');
			var button_holder = $('.print_button');
			if(button.text() == "Print Friendly View" ){
				button.text("Normal View");
				button_holder.addClass('text-center');
				$('#nav, #filter_bar').hide();
				$('body').removeClass('wallpaper');
				$('.red').addClass('lightgrey');
				$('.red').toggleClass('red');
				$('.crtc_report').addClass('print_wrapper');
			}else{
				button.text("Print Friendly View");
				$('#nav, #filter_bar').show();
				button_holder.removeClass('text-center');
				$('body').addClass('wallpaper');
				$('.crtc_report').removeClass('print_wrapper');
				$('.lightgrey').addClass('red');
				$('.lightgrey').toggleClass('lightgrey');
			}


		}
		this.loadGrid = function(){
			var this_ = this;
			this.percentages = {};
			this.percentage_totals = {};
			$scope.$apply();
			this.show_names = Array();
			var length = this.playsheets.length;
			//console if no playitems, just return
			if(length <= 0)	return -1;

			//Generate list of show names
			for(var i = 0; i < length; i++){
				if(this.show_names.indexOf(this.playsheets[i].show.name) < 0) this.show_names.push(this.playsheets[i].show.name);
			}

			//Set defaults for the overall totals
			this.percentage_totals = {'playitems':0,'playitems_2':0,'playitems_3':0,'femcon_total':0,'cancon_2_total':0,'cancon_3_total':0,'hit_total':0,'ads':0,'spokenword':0};

			//Check to see if there is only one show, or multiple
			if(this.show_names.length > 1){
				//Get playsheets under their respective show names as we have multiple shows

				for(var index in this.show_names){
					
					//Get list of applicable playsheets
					var show_playsheets = this.playsheets.filter(function(obj){ return obj.show.name == this_.show_names[index]; });
					//Get the show info for the show name
					var show = this.shows.filter(function(obj){return obj.name==this_.show_names[index]; })[0].show;
					//Set defaults for the show percentages
					this.percentages[this.show_names[index]] = {'name':this.show_names[index],'playitems_2':0,'playitems_3':0,'total':0,'cancon_2_total':0,'cancon_3_total':0,'femcon_total':0,'hit_total':0,'ad_total':0,'spokenword_total':0};
					this.percentages[this.show_names[index]]['required_cancon'] = show.cc_req;
					this.percentages[this.show_names[index]]['required_femcon'] = show.fem_req;

					for(var item in show_playsheets){
						var playitems = show_playsheets[item].playitems;
						//Add totals to the show total so far
						this.percentages[this.show_names[index]]['total'] += playitems.length;
						this.percentages[this.show_names[index]]['playitems_2'] += playitems.filter(function(obj){return obj.crtc_category == 20}).length;
						this.percentages[this.show_names[index]]['playitems_3'] += playitems.filter(function(obj){return obj.crtc_category == 30}).length;
						//Add count to the show count so far
						this.percentages[this.show_names[index]]['cancon_2_total'] += playitems.filter(function(obj){return obj.is_canadian==1 && obj.crtc_category == 20}).length;
						this.percentages[this.show_names[index]]['cancon_3_total'] += playitems.filter(function(obj){return obj.is_canadian==1 && obj.crtc_category == 30}).length;
						this.percentages[this.show_names[index]]['femcon_total'] += playitems.filter(function(obj){return obj.is_fem==1}).length;
						this.percentages[this.show_names[index]]['hit_total'] += playitems.filter(function(obj){return obj.is_hit==1}).length;
					}
					//Add show total to overall totals
					this.percentage_totals.playitems += this.percentages[this.show_names[index]]['total'];
					this.percentage_totals.playitems_2 += this.percentages[this.show_names[index]]['playitems_2'];
					this.percentage_totals.playitems_3 += this.percentages[this.show_names[index]]['playitems_3'];
					this.percentage_totals.cancon_2_total += this.percentages[this.show_names[index]]['cancon_2_total'];
					this.percentage_totals.cancon_3_total += this.percentages[this.show_names[index]]['cancon_3_total'];
					this.percentage_totals.femcon_total += this.percentages[this.show_names[index]]['femcon_total'];
					this.percentage_totals.hit_total += this.percentages[this.show_names[index]]['hit_total'];
				}
			}else{
				//Playsheets are all from one show.

				//Get the show information for this name
				var show = this.shows.filter(function(obj){return obj.name==this_.show_names[0]; })[0].show;
				for(var item in this.playsheets){
					var playsheet = this.playsheets[item];
					var playitems = playsheet.playitems;
					//Set defaults for this playsheet
					this.percentages[playsheet.id] = {'date':playsheet.start_time,'required_cancon':show.cc_req,'required_femcon':show.fem_req};
					//get totals for the playsheet
					this.percentages[playsheet.id]['total'] = playitems.length;
					this.percentages[playsheet.id]['playitems_2'] = playitems.filter(function(obj){return obj.crtc_category == 20}).length;
					this.percentages[playsheet.id]['playitems_3'] = playitems.filter(function(obj){return obj.crtc_category == 30}).length;
					//Count values from playsheet
					this.percentages[playsheet.id]['cancon_2_total'] = playitems.filter(function(obj){return obj.is_canadian==1 && obj.crtc_category == 20}).length;
					this.percentages[playsheet.id]['cancon_3_total'] = playitems.filter(function(obj){return obj.is_canadian==1 && obj.crtc_category == 30}).length;
					this.percentages[playsheet.id]['femcon_total'] = playitems.filter(function(obj){return obj.is_fem==1}).length;
					this.percentages[playsheet.id]['hit_total'] = playitems.filter(function(obj){return obj.is_hit==1}).length;
					//increment overall counts
					this.percentage_totals.playitems += this.percentages[playsheet.id]['total'];
					this.percentage_totals.playitems_2 += this.percentages[playsheet.id]['playitems_2'];
					this.percentage_totals.playitems_3 += this.percentages[playsheet.id]['playitems_3'];
					this.percentage_totals.cancon_2_total += this.percentages[playsheet.id]['cancon_2_total'];
					this.percentage_totals.cancon_3_total += this.percentages[playsheet.id]['cancon_3_total'];
					this.percentage_totals.femcon_total += this.percentages[playsheet.id]['femcon_total'];
					this.percentage_totals.hit_total += this.percentages[playsheet.id]['hit_total'];
					console.log(this.percentage_totals);


				}
			}
			$scope.$apply();
		}
		this.init();
	});

	app.controller('datepicker', function($filter) {
		this.today = function() {
			this.dt = $filter('date')(new Date(), 'yyyy/MM/dd');
		};
		this.clear = function () {
			this.dt = null;
		};
		this.open = function($event){
			$event.preventDefault();
			$event.stopPropagation();
			this.opened = true;
		};
		this.format = 'yyyy-MM-dd';
	});
	app.directive('reportitem',function(){
		return{
			restrict: 'A',
			templateUrl: 'templates/report_item.html'
		}
	});
	app.filter('pad', function () {
		return function (n, len) {
			var num = parseInt(n, 10);
			len = parseInt(len, 10);
			if (isNaN(num) || isNaN(len)) {
				return n;
			}
			num = ''+num;
			while (num.length < len) {
				num = '0'+num;
			}
			return num;
		};
	});
	app.filter('percentage', ['$filter', function ($filter) {
		return function (input, decimals) {
			return $filter('number')(input * 100, decimals) + '%';
		};
	}]);


})();
