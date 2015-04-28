<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/jsp/common/taglibs.jspf"%>
<es:contentHeader/>
<%@include file="/WEB-INF/jsp/common/import-zTree-css.jspf"%>
<div class="panel">

    <ul class="nav nav-tabs">
        <shiro:hasPermission name="bussiness:product:create">
        <c:if test="${op eq '新增'}">
            <li ${op eq '新增' ? 'class="active"' : ''}>
                <a href="${ctx}/bussiness/product/product/create?BackURL=<es:BackURL/>">
                    <i class="icon-file-alt"></i>
                    新增
                </a>
            </li>
        </c:if>
        </shiro:hasPermission>

        <c:if test="${not empty m.id}">
            <li ${op eq '查看' ? 'class="active"' : ''}>
                <a href="${ctx}/bussiness/product/product/${m.id}?BackURL=<es:BackURL/>">
                    <i class="icon-eye-open"></i>
                    查看
                </a>
            </li>
            <shiro:hasPermission name="bussiness:product:update">
            <li ${op eq '修改' ? 'class="active"' : ''}>
                <a href="${ctx}/bussiness/product/product/${m.id}/update?BackURL=<es:BackURL/>">
                    <i class="icon-edit"></i>
                    修改
                </a>
            </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="bussiness:product:delete">
            <li ${op eq '删除' ? 'class="active"' : ''}>
                <a href="${ctx}/bussiness/product/product/${m.id}/delete?BackURL=<es:BackURL/>">
                    <i class="icon-trash"></i>
                    删除
                </a>
            </li>
            </shiro:hasPermission>
        </c:if>
        <li>
            <a href="<es:BackURL/>" class="btn btn-link">
                <i class="icon-reply"></i>
                返回
            </a>
        </li>
        <c:if test="${op eq '查看'}">
         <li>
            <a href="${ctx}/bussiness/product/subproduct/create1?BackURL=<es:BackURL/>&pid=${m.id}" class="btn btn-link">
                <i class="icon-edit"></i>
                                          添加具体描述
            </a>
        </li>
        </c:if>
    </ul>

    <form:form id="editForm" method="POST" commandName="m"  action="create3" cssClass="form-horizontal">
          <es:showGlobalError commandName="m"/>

            <form:hidden path="id"/>
            <form:input path="userId" type="hidden" value="${m.userId}"/>
 
            
         <div class="control-group">
            <label for="treeName" class="control-label">所属地区</label>
            <div class="controls input-append" title="选择所属地区">
                <form:input type="hidden" id="treeId" name="treeId" path="tree.id"/>
                <form:input type="text" path="tree.name"  id="treeName" class="input-large" readonly="readonly"/>
                <a id="selectTree">
                    <span class="add-on"><i class="icon-chevron-down"></i></span>
                </a>
            </div>
        </div>
            
            <div class="control-group">
                <form:label path="category.name" cssClass="control-label">所属类别</form:label>
                <div class="controls input-append">
                    <form:input id="categoryName" path="category.name" cssClass="validate[required]" readonly="true"/>
                    <span class="add-on"><i class="icon-chevron-down"></i></span>
                    <form:hidden id="categoryId" path="category.id"/>
                </div>
            </div>

           <div class="control-group">
                <form:label path="zcbh" cssClass="control-label">注册编号</form:label>
                <div class="controls">
                    <form:input path="zcbh" cssClass="validate[required]" placeholder="5到10个字母、数字、下划线"/>
                </div>
            </div>
            
            <div class="control-group">
                <form:label path="name" cssClass="control-label">名称</form:label>
                <div class="controls">
                    <form:input path="name" cssClass="validate[required]" placeholder="5到10个字母、数字、下划线"/>
                </div>
            </div>
            
             <div class="control-group">
                <form:label path="address" cssClass="control-label">项目地址</form:label>
                <div class="controls">
                    <form:input path="address" cssClass="validate[required]" placeholder="5到10个字母、数字、下划线"/>
                </div>
            </div>
 	        <div class="control-group">
                <form:label path="xmms" cssClass="control-label">项目描述</form:label>
                <div class="controls">
                  <form:textarea path="xmms" cssClass="validate[required]" cssStyle="width: 550px;height: 300px;"/>
               </div>
            </div>
            <div class="control-group">
                <form:label path="beginDate" cssClass="control-label">开始时间</form:label>
                <div class="controls input-append date">
                    <form:input path="beginDate" data-format="yyyy-MM-dd hh:mm:ss" placeholder="例如2013-02-07 11:11:11"/>
                    <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
                </div>
            </div>

            <div class="control-group">
                <form:label path="endDate" cssClass="control-label">结束时间</form:label>
                <div class="controls input-append date">
                    <form:input path="endDate" data-format="yyyy-MM-dd hh:mm:ss" placeholder="例如2013-02-07 11:11:11"/>
                    <span class="add-on"><i data-time-icon="icon-time" data-date-icon="icon-calendar"></i></span>
                </div>
            </div>

            <div class="control-group">
                <form:label path="show" cssClass="control-label">是否显示</form:label>
                <div class="controls inline-radio">
                    <form:radiobuttons path="show" items="${booleanList}" itemLabel="info" itemValue="value" cssClass="validate[required]"/>
                </div>
            </div>


            <c:if test="${op eq '新增'}">
                <c:set var="icon" value="icon-file-alt"/>
            </c:if>
            <c:if test="${op eq '修改'}">
                <c:set var="icon" value="icon-edit"/>
            </c:if>
            <c:if test="${op eq '删除'}">
                <c:set var="icon" value="icon-trash"/>
            </c:if>

            <div class="control-group">
                <div class="controls">
                    <button type="submit" class="btn btn-primary">
                        <i class="${icon}"></i>
                            ${op}
                    </button>
                    <a href="<es:BackURL/>" class="btn">
                        <i class="icon-reply"></i>
                        返回
                    </a>
                </div>
            </div>

    </form:form>
</div>
<es:contentFooter/>
<%@include file="/WEB-INF/jsp/common/import-editor-js.jspf"%>
<%@include file="/WEB-INF/jsp/common/import-zTree-js.jspf"%>
<script type="text/javascript">

    $(function () {
    
        <c:choose>
        <c:when test="${op eq '删除'}">
        //删除时不验证 并把表单readonly
        $.app.readonlyForm($("#editForm"), false);
        </c:when>
        <c:when test="${op eq '查看'}">
        $.app.readonlyForm($("#editForm"), true);
        </c:when>
            <c:otherwise>
                var validationEngine = $("#editForm").validationEngine();
                <es:showFieldError commandName="m"/>
            </c:otherwise>
        </c:choose>

        $( "#number" ).spinner({
            step: 1,
            min : 0,
            numberFormat: "n"
        });
        
        $("[name='category.name']").siblings(".add-on").andSelf().click(function() {
            $.app.modalDialog(
                    "参照",
                    "${ctx}/bussiness/product/category/select/single;domId=categoryId;domName=categoryName",
                    {
                        width:600,
                        height:450,
                        callback : function() {
                            $("[name='category.name']").validationEngine('validate');
                            return true;
                        }
                    }
             );
        });
        
         var editor = KindEditor.create('textarea[name="xmms"]', {
            themeType: 'simple',
            uploadJson: '${ctx}/kindeditor/upload',
            fileManagerJson: '${ctx}/kindeditor/filemanager',
            allowFileManager: true,
            afterBlur: function(){this.sync();}
        });
        
         var TreeId = $.zTree.initSelectTree({
        zNodes : [],
        nodeType : "default",
        fullName:true,
        urlPrefix : "${ctx}/bussiness/tree",
        async : true,
        asyncLoadAll : false,
        onlyDisplayShow: true,
        lazy : false,
        select : {
            btn : $("#selectTree,#treeName"),
            id : "treeId",
            name : "treeName",
            includeRoot: true
        },
        autocomplete : {
            enable : false
        },
        setting :{
            check : {
                enable:false,
                chkStyle:"radio",
                chkboxType: { "Y": "", "N": "s" },
                onlyCheckLeaf : false,
                onlySelectLeaf : false
            }
        }
    });
    $("#treeName").change(function() {
        $("#selectTree").val($(this).val().replace(/,/g, "\n"));
    });
        
        
        
    });
 	
</script>