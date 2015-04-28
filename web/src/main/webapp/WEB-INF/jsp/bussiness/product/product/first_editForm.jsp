<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>

<div class="panel">

    <ul class="nav nav-tabs">
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
    </ul>
<form id="searchForm" class="form-inline search-form" method="post" action="listFind">
    <esform:input path="search.userId_eq" type="hidden" value="${user.id}"/>
   
    <esform:label path="search.zcbh_eq">注册编号</esform:label>
    <esform:input path="search.zcbh_eq" cssClass="input-small" placeholder=""/>
    &nbsp;&nbsp;
    <button type="submit" class="btn ">下一步</button>
</form>
</div>
<es:contentFooter/>