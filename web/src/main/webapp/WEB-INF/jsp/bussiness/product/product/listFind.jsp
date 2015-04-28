<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>
<c:set var="categoryId" value="${empty category ? 0 : category.id}"></c:set>
<div data-table="table" class="panel">


    <ul class="nav nav-tabs">
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
    </ul>

    <es:showMessage/>
    <c:choose>
     <c:when test="${empty list}">
                      该项目没有添加,去
                  <a href="${ctx}/bussiness/product/product/create">
                                                      添加
                </a>
        </c:when>
<c:otherwise>
      <table id="table" class="sort-table table table-bordered table-hover" data-async="true">
    <thead>
    <tr>
        <th >名称</th>
        <th >所属类别</th>
        <th>开始时间</th>
        <th>结束时间</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${list}" var="m" varStatus="status">
        <tr id="${m.id}">
            <td>
                <a href="${ctx}/showcase/product/product/${m.id}">${m.name}</a>
            </td>
            
             <td>
              ${m.category.name}
              </td>
            <td><spring:eval expression="m.beginDate"/></td>
            <td><spring:eval expression="m.endDate"/></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
      
</c:otherwise>
</c:choose>
   
</div>
<es:contentFooter/>

<script type="text/javascript">
    $(function() {
        $("#searchCategoryId").click(function() {
            $.app.modalDialog(
                    "参照",
                    "${ctx}/bussiness/product/category/select/multiple;domId=searchCategoryId",
                    {
                        height : 400
                    }
            );
        });
    });
</script>

