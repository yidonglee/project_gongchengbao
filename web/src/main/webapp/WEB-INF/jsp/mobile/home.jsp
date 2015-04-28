<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk"/>
    <meta name="description" content=""/>
    <!-- Sets initial viewport load and disables zooming  -->
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui"></meta>

    <!-- Makes your prototype chrome-less once bookmarked to your phone's home screen -->
    <meta name="apple-mobile-web-app-capable" content="yes"></meta>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"></meta>
    <title>工程宝|国内最权威的工程项目资料库</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="${ctx}/static/mobile/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="${ctx}/static/mobile/css/themes/jqm-demos.css">
	<script src="${ctx}/static/mobile/js/jquery.js"></script>
	<script src="${ctx}/static/mobile/js/index.js"></script>
	<script src="${ctx}/static/mobile/js/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>

	 
	<!-- {!begin layout} -->
		<div data-role="header" style="overflow:hidden;">
				<h1>I'm a header</h1>
					<a href="#" data-icon="gear" class="ui-btn-right">Options</a>
					<div data-role="navbar">
						<ul>
							<li><button data-icon="home">One</button></li>
							<li><button data-icon="grid" data-theme="b">Two</button></li>
							<li><button data-icon="search">Three</button></li>
						</ul>
					</div><!-- /navbar -->
		</div><!-- /header -->
   
	 <%@include file="fragmet/footer.jsp"%>
       
	
	<!-- {!end layout} -->
</body>
</html>



