<?php
//MENU HEADER
include_once("session_header.php");
require_once(dirname(__DIR__).'/config.php');
//require_once(__DIR__.'\function_header.php');
require_once('security_header.php');

function admin_menu()
{
    global $djland_permission_levels;
    if (permission_level() >= $djland_permission_levels['administrator']) : ?>
        <ul id="admin-nav" class="nav mini">
            <li class="nodrop"><a href="../admin.php">Membership Admin</a></li>
            <li class="nodrop"><a href="data_structures.php">Data Structures</a></li>
        </ul>
    <?php
    endif;
}

function print_menu(){
	global $enabled,$djland_permission_levels,$using_sam;
?>
	<ul id=nav>
		<?php
			echo "<div id='member_id' class='hidden' value={$_SESSION['sv_id']}>{$_SESSION['sv_id']}</div>";
			echo "<div id='permission_level' class='hidden'>".permission_level()."</div>";
			echo "<div id='using_sam' class='hidden'>".($using_sam ?'1':'0')."</div>";
			if( (permission_level() >= $djland_permission_levels['volunteer_leader']['level']) && $enabled['membership'] ):
		?>
		<li class=nodrop><a href="membership.php">Membership</a></li>
		<?php
			endif;
			if( permission_level() > $djland_permission_levels['member']['level'] ): ?>
		<li style="visibility:hidden;" class=drop><a href="library.php">Library</a>
			<div class="dropdown small">
				<div class=small>
					<ul>
						<?php if(permission_level() >=  $djland_permission_levels['member']['level'] && $enabled['library']) : ?>
						<li><a href="library.php"> View Library</a></li>
						<?php endif; ?>
						<?php if( permission_level() >= $djland_permission_levels['volunteer']['level'] && $enabled['library']) : ?>
						<li><a href="library.php?action=add">Update Library</a></li>
						<?php endif; ?>
					</ul>
				</div>
			</div>
		</li>

		<?php
		endif;
		if( permission_level() >= $djland_permission_levels['workstudy']['level'] ):
		?>
		<li class='drop'><a href='#'>Admin</a>
			<div class="dropdown small">
				<div class=small>
					<ul>

<!--						<li><a href="schedule_override.php">Schedule Override</a></li>
						<li><a href="friends.php">Friends of CiTR</a></li>
						<li><a href="scheduler.php">Ad Scheduler</a></li>
						<li><a href="sam_ad_history.php">Sam Ad History</a></li> -->
						<?php if(permission_level() >=  $djland_permission_levels['staff']['level']) : ?>
							<li><a href="setSocan.php"> Socan Periods </a></li>
						<?php endif; ?>
					</ul>
				</div>
			</div>
		</li>
		<?php
		endif;
		if($enabled['charts'] && permission_level() >=$djland_permission_levels['workstudy']['level']) : ?>
			<li class=nodrop><a href="charting.php">Charts</a></li>
		<?php
		endif;
		if($enabled['shows'] && permission_level() >= $djland_permission_levels['dj']['level']) :
		?>
		<li class=nodrop><a href="shows.php?action=list">Shows</a></li>
		<?php
		endif;
		if(permission_level() >= $djland_permission_levels['dj']['level']):
		?>
			<li class=nodrop ><a href="crtc_report.php">Reporting</a></li>
		<?php
			endif;
			if($enabled['playsheets'] && permission_level() >= $djland_permission_levels['dj']['level']): ?>
				<li class=drop><a href="open_playsheet.php">Episodes</a>
					<div class="dropdown small">
						<div class=small>
							<ul>
								<li><a href="playsheet_angular.php">New Playsheet</a></li>
								<li><a href="playsheet_angular.php?socan=true">New Socan Playsheet</a></li>
								<li><a href="open_playsheet.php">Open a Playsheet</a></li>
								<li><a href="podcasts.php"> Podcasts </a></li> 
							</ul>
						</div>
					</div>
				</li>
	   <?php endif; ?>

<!--     <?php if(permission_level() >= $djland_permission_levels['staff']['level']): ?>
       <li class=drop><a href="fundrive-form.php">Fundrive</a>
         <div class="dropdown small">
             <ul>
               <?php if(permission_level() >= $djland_permission_levels['staff']['level']): ?>
                 <li><a href="fundrive-form.php">New Fundrive Form</a></li>
			 <?php endif; ?>
               <?php if(permission_level() >= $djland_permission_levels['staff']['level']): ?>
                 <li><a href="fundrive-open-form.php">Open a Fundrive Form</a></li>
			 <?php endif; ?>
               <?php if(permission_level() >= $djland_permission_levels['staff']['level']): ?>
                 <li><a href="fundrive-dump-stats.php">Download Fundrive Data (.csv)</a></li>
			 <?php endif; ?>
             </ul>
         </div>
       </li>
		
     <?php endif;  ?>  -->
	 <?php if($_SESSION['sv_username'] == 'fundrive'): ?>
		 <li class="nodrop"><a href="fundrive-form.php">New Fundrive Form</a></li>
	 <?php 	endif; ?>
	 	<li class="menu_right nodrop"><a href="index.php?action=logout">Log Out</a></li>
	 	<li class="menu_right nodrop"><a href="member_settings.php">My Profile</a></li>
		<?php if(permission_level() >=  $djland_permission_levels['member']['level']) : ?>
		<li class='menu_right drop'><a href="member_resources.php">Member Resources</a>
			<div class="dropdown small">
				<div class="small">
					<ul>

						<!-- <li><a href="member_resources.php">Resources</a></li> -->
						<?php
						//if( permission_level() >= $djland_permission_levels['workstudy'] || is_trained()):
						if(permission_level() >= $djland_permission_levels['member']['level'] && is_trained()|| permission_level() >= $djland_permission_levels['workstudy']['level']):
						?>
						<!-- <li><a href="studio_booking.php">Book a Studio</a></li> -->
						<?php endif; ?>

						<?php if(permission_level() >= $djland_permission_levels['dj']['level']) : ?>
						<li><a href="help.php" target="_blank"> Help </a></li>
						<?php endif; ?>

					</ul>
				</div>
			</div>
		</li> 
		<?php endif; ?>
	</ul>
	<br/>
<?php 
}
