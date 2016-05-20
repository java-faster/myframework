<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新建博客</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/add.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/nicEdit.js"></script>
</head>
<body>
<div class="div_from_aoto">
       <div class="control-group" >
           <div class="controls">
             <p class="help-block"></p>
             <input id='title' class="input_from" style="width:5%;height:50px;border: 0;text-align: center;" value="标题" type="text"/>
             <input id='title' class="input_from" style="width:50%;height:50px;" placeholder="请输入标题" type="text" value="${blog.title }"/>
             <input id='title' class="input_from" style="width:5%;height:50px;border: 0;text-align: center;" value="分类" type="text"/>
             <select id='categories' style="width:10%;height:50px;">
	             <option value=""></option>
	             <c:forEach items="${categoriesList }" var="categories" varStatus="row">
	             	<option value ="${categories.name }" <c:if test="${categories.name eq blog.categories}">selected="selected"</c:if>> ${categories.name } </option>
	             </c:forEach>
             </select>
             <p class="help-block"></p>
           </div>
       </div>
       <div class="control-group">
         	<div class="controls">
               <textarea id="content" style="width:95%; height: 600px; border: 1px solid #000;" >${blog.content }</textarea>
               <div style="clear: both;"></div>
            </div>
	   </div>
	   <div class="control-group">
            <div class="controls">&nbsp;</div>
            <div class="controls">
                   <button class="btn btn-success" style="width:120px;" onclick="publishBlog(${blog.id })">发布</button>
                   <button class="btn btn-warning" style="width:120px;" onclick="cancelEdit()">取消</button>
            </div>
           <div class="controls">&nbsp;</div>
        </div>
</div>
<script type="text/javascript">
var area1;
function toggleArea() {
	if(!area1) {
		area1 = new nicEditor({fullPanel : true}).panelInstance('content');
	} else {
		area1.removeInstance('content');
		area1 = null;
	}
}
bkLib.onDomLoaded(function() { toggleArea();});
function publishBlog(id){
	 $.ajax({
	        url: "${pageContext.request.contextPath}/admin/updExitArticle",
	        type: "POST",
	        dataType : 'text', 
	        data : {
	        	id:id,
	        	title:$("#title").val(),
	        	description:removeHtmlTag($(".nicEdit-main").html()),
	        	content:$(".nicEdit-main").html(),
	        	location:"北京",
	        	categories:$("#categories").val()
	        	},
	        async: false,
	        success: function(data) {
	        	if(data == 0){
		    		alert("发送错误");
		    	}else{
		    		alert("发送成功");
		    	}
	        },
	        error: function(msg) {
	        	alert(msg);
	        }
	   });
}
function cancelEdit(){
	window.location.reload();
}
function removeHtmlTag(str){
	return str.replace(/<[^>]+>/g,"");
}
</script>
</body>
</html>