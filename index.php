<?php
include_once("headers/session_header.php");
require_once('headers/login_header.php');
require_once('headers/db_header.php');
require_once("headers/password.php");

if( isset($_POST['action']) && $_POST['action'] == "signup"){
	header("Location: membership_add.php");
	//echo "signing up";
	//printf("<html><head><meta http-equiv=\"refresh\" content=\"0;URL=membership_add.php\"><link rel=stylesheet href=css/style.css type=text/css></head></html>");
	}
else if(is_logged_in() && isset($_GET['action']) && $_GET['action'] == "logout") {
	logout();
	$message = "Logged Out";
	}
else if(is_logged_in()) {
	//header("Location: main.php");
	printf("<html><head><meta http-equiv=\"refresh\" content=\"0;URL=main.php\"><link rel=stylesheet href=css/style.css type=text/css></head></html>");
	}
else if(isset($_POST['action']) && $_POST['action'] == "login") {
	//isset($_POST['login']) && isset($_POST['password'])
	if(login ($_POST['username'], $_POST['password'], isset( $_POST['permanent_cookie'] ) ) ) {
		header("Location: main.php");
		//printf("<html><head><meta http-equiv=\"refresh\" content=\"0;URL=main.php\"><link rel=stylesheet href=css/style.css type=text/css></head></html>");

		}
	else{
		$message = "Login Failed <br> (Incorrect Password)".login($_POST['username'], $_POST['password'], isset($_POST['permanent_cookie']) );
		}
	}
else {
	logout();
	$message = " ";
	}

if (is_logged_in()) {
	//header("Location: main.php");
}

else {
?>
	<html>
		<head><meta name=ROBOTS content=\"NOINDEX, NOFOLLOW\">
		<link rel=stylesheet href=css/style.css type=text/css>
		<title>DJ Land</title></head>
<?php
	preg_match('/MSIE (.*?);/', $_SERVER['HTTP_USER_AGENT'], $matches);
	if (count($matches)>1){
		$version = $matches[1];
		if($version <= 8 ) echo "<body class='ie'>"; else echo "<body class='wallpaper'>";
	}
	else{
		echo "<body class='wallpaper'>";
	}
?>
	<div id = 'login' class="wrapper">
		<FORM METHOD=POST ACTION= <?php echo "'".$_SERVER['SCRIPT_NAME']."'"; ?> name='site_login' >
			<h3>Welcome to DJ Land</h3>
			<label for='username'>Login: </label><input type=text name='username' class='right double-margin-right'/><br/>
			<div class='login-spacing-bar'></div>
			<label for='password'>Password: </label><input type=password name='password' class='right double-margin-right'/><br/>
			<div class='big-login-spacing-bar'></div>
			<input type='submit' name='action' value='login'/>
			<input type='submit' name='action' value='signup'/>
		</FORM>
		If you forget your password, please Magnus at cjsfmgr@sfu.ca
		<div id = 'message' >
		<?php
			echo $message;
		?>
		</div>
	</div>
<!-- Piwik -->
<script type="text/javascript">
  var _paq = _paq || [];
  _paq.push(['trackPageView']);
  _paq.push(['enableLinkTracking']);
  (function() {
    var u=(("https:" == document.location.protocol) ? "https" : "http") + "://djland.cjsf.ca/piwik/";
    _paq.push(['setTrackerUrl', u+'piwik.php']);
    _paq.push(['setSiteId', 1]);
    var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0]; g.type='text/javascript';
    g.defer=true; g.async=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
  })();

</script>
<noscript><p><img src="http://djland.cjsf.ca/piwik/piwik.php?idsite=1" style="border:0;" alt="" /></p></noscript>
<!-- End Piwik Code -->
	</body>
</html>

<?php } ?>
