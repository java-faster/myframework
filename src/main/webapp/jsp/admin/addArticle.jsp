<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>新建</title>
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
             <input id='title' class="input_from" style="width:80%" placeholder="请输入标题" type="text"/>
             <p class="help-block"></p>
           </div>
       </div>
       <div class="control-group">
         	<div class="controls">
               <textarea id="content" style="width:80%; height: 400px; border: 1px solid #000;" ></textarea>
               <div style="clear: both;"></div>
            </div>
	   </div>
	   <div class="control-group">
            <label class="laber_from"></label>
            <div class="controls">&nbsp;</div>
            <div class="controls">
                   <button class="btn btn-success" style="width:120px;" onclick="publishBlog()">发布</button>
                   <button class="btn btn-info" style="width:120px;" onclick="saveDraft()">存为草稿</button>
                   <button class="btn btn-warning" style="width:120px;" onclick="cancelEdit()">取消</button>
            </div>
        </div>
</div>
</body>
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
function publishBlog(){
	 $.ajax({
	        url: "addNewBlog.do",
	        type: "post",
	        dataType : 'text', 
	        data : {auther:'Json',title:$("#title").val(),content:removeHtmlTag($(".nicEdit-main").html()),contentHtml:$(".nicEdit-main").html(),status:'1'} ,
	        async: false,
	        success: function(data) {
	        	
	        	$("#title").val("");
	        	$(".nicEdit-main").html("");
	        },
	        error: function(msg) {
	        	alert(msg);
	        }
	   });
}
function saveDraft(){
	$.ajax({
        url: "addNewBlog.do",
        type: "post",
        dataType : 'text', 
        data : {auther:'Json',title:$("#title").val(),content:removeHtmlTag($(".nicEdit-main").html()),contentHtml:$(".nicEdit-main").html(),status:'0'} ,
        async: false,
        success: function(data) {
        	alert("成功");
        	$("#title").val("");
        	$(".nicEdit-main").html("");
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
</html>