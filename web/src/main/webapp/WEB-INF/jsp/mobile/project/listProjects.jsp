<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gbk"/>
    <meta name="description" content=""/>
    <meta name="viewport" content="initial-scale=1, maximum-scale=1, user-scalable=no, minimal-ui"></meta>
    <meta name="apple-mobile-web-app-capable" content="yes"></meta>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"></meta>
    <%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
    <title>工程宝|国内最权威的工程项目资料库</title>
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
	<link rel="stylesheet" href="${ctx}/static/mobile/css/themes/default/jquery.mobile-1.4.5.min.css">
	<link rel="stylesheet" href="${ctx}/static/mobile/css/themes/jqm-demos.css">
	<script src="${ctx}/static/mobile/js/jquery.js"></script>
	<script src="${ctx}/static/mobile/js/index.js"></script>
	<script src="${ctx}/static/mobile/js/jquery.mobile-1.4.5.min.js"></script>


<script lang="javascript">
$(document).ready(function(){
   

});

</script>
</head>
<body>
     <div data-role="page">
		<div data-role="header" >
		<h1>Page</h1>
		</div><!-- /header -->
		<div role="main" class="ui-content">
		<ul data-role="listview" data-inset="true">
		 <c:forEach items="${page.content}" var="m" varStatus="status">
		    <li data-role="list-divider">Friday, October 8, 2010 <span class="ui-li-count">2</span></li>
    <li><a href="${ctx}/mobile/project/${m.id}">
    <h2>${m.name}</h2>
    <p><strong>You've been invited to a meeting at Filament Group in Boston, MA</strong></p>
    <p>Hey Stephen, if you're available at 10am tomorrow, we've got a meeting with the jQuery team.</p>
        <p class="ui-li-aside"><strong>6:24</strong>PM</p>
    </a></li>
		 
		 </c:forEach>
 
    
   
</ul>
		
         </div>
		<%@include file="../fragmet/footer.jsp"%>
    
</body>
</html>
