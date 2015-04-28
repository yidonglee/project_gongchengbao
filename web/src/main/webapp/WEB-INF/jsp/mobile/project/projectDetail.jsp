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
    <title>项目详细信息|国内最权威的工程项目资料库</title>
    <link href="${ctx}/static/mobile/css/ratchet.css" rel="stylesheet"></link>
    <script src="${ctx}/static/comp/jquery-ui-bootstrap/js/jquery-1.10.1.min.js"></script>
    <script src="${ctx}/static/mobile/js/ratchet.js"></script>
    <style type="text/css">
.slider {
  margin-bottom: 0;
}
.slider img {
  width: auto;
  height: 150px;
}
.content-padded {
  margin: 30px 15px 15px;
}
</style>

<script lang="javascript">
$(document).ready(function(){
   $("#back").click(
   function(){
   	window.location.href="${ctx}/mobile/listProjects";
   }
   );
});
</script>
</head>
<body>
    <div data-role="page">
		<div data-role="header" >
		<a href="${ctx}/mobile/listProjects" data-icon="carat-l" ></a>
         <h1>项目详情</h1>
    <button class="ui-btn-right ui-btn ui-btn-b ui-btn-inline ui-mini ui-corner-all ui-btn-icon-right ui-icon-check">Save</button>
		</div>
		<div role="main" class="ui-content">
		<h3 class="ui-bar ui-bar-a ui-corner-all">Heading</h3>
         <div class="ui-body">
ffffffffff
          </div>
         </div>
		
	</div>
</body>
</html>
