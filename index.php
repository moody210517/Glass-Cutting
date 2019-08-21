<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<html>
<head>
	<title><?php echo getenv('HTTP_HOST'); ?></title>
	<style type="text/css">
		body {
			font : 10pt Arial, Helvetica, sans-serif;
			color : Maroon;
			text-decoration : none;
			background-image : url(http://www.anno.com/styles/skeleton/background.jpg);
			background-repeat : no-repeat;
			background-position : right bottom;
			background-color: #F6F8FF;
		}

		a {
			color : #000000;
			text-decoration : underline;
			font-weight : normal;
		}
		a:hover {
			color : #550000;
		}
		a:link {
			color : #000000;
		}
		a:active {
			color : #550000;
		}
		a:visted {
			color : #000000;
		}

		td {
			font : 10pt Arial, Helvetica, sans-serif;
			color : #000000;
		}
		.small {
			font : 8pt Arial, Helvetica, sans-serif;
			color : #000000;
		}

		h1 {
			font : bold 24pt Arial, Helvetica, sans-serif;
			color : #000000;
		}
		h2 {
			font : bold 18pt Arial, Helvetica, sans-serif;
			color : #000000;
		}
		h3 {
			font : bold 10pt Arial, Helvetica, sans-serif;
			color : #000000;
		}

		hr {
			color : #000000;
			border-bottom : 0px;
			border-top : 1px;
			border-top-color : #000000;
			border-top-style : solid;
		}
	</style>
</head>

<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="10" align="center">
<tr>
    <td colspan="2" align="center" valign="top"><br>
		<br>
		<h1 align="center">	<?php echo getenv('HTTP_HOST'); ?></h1>
		<h2>Welcome to our New Home on the Web</h2>
		Our web site is under construction. Please check back soon.<br>
		<br><br><br>
	</td>
</tr><tr>
    <td colspan="2" class="small">
		<hr width="100%" size="1" noshade>
		<h3>Information for the Web Site Administrator:</h3>
		This is a temporary home page that was automatically created for your web hosting account. Please delete this page, index.php, from the public_html directory when you are ready to publish your web site, else your new home page will not become visible.<br>
	</td>
</tr><tr>
    <td class="small" width="40%" valign="top">
		<b>Important links to bookmark:</b>
		<ul>
		<li><b>Control panel:</b> <a href="http://<?php echo getenv('HTTP_HOST'); ?>/cpanel" target="_top" title="Click here to open your cPanel"><?php echo getenv('HTTP_HOST'); ?>/cpanel</a> (manage your e-mail and web services).</li>
		<li><b>Webmail:</b> <a href="http://<?php echo getenv('HTTP_HOST'); ?>/webmail" title="Click here to access your e-mail"><?php echo getenv('HTTP_HOST'); ?>/webmail</a> (browser-based e-mail).</li>
		</ul>
	</td>
	<td class="small" width="60%" valign="top">
		<b>Getting technical support:</b>
		<ul>
		<li><b>Client Portal:</b> For technical or billing support, please submit your problem in the <a href="https://anno.com/portal" title="Click here to go to the ANNO Helpdesk">ANNO&nbsp;Portal</a>.</li>
		</ul>
	</td>
</tr><tr>
    <td colspan="2" class="small" align="right" valign="bottom"><br>
		<br><br>
		web hosting and domain name registration by	<a href="http://www.anno.com/" target="_top" title="Click here to see what ANNO Internet can do for your business">ANNO Internet</a></a><br>
(quietly, reliably and securely serving world wide web sites since 1996)
	</td>
</tr>
</table>
</body>
</html>
