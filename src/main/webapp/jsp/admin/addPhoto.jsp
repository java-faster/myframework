<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Basic_tables</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/add.css" type="text/css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css" type="text/css" />
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/nicEdit.js"></script>
<script type="text/javascript">
function publishPhoto(){
	 var img = window.frames["ifm"].document.getElementById("imgshow");
	 if(img == null){
		 alert("请插入图片");
		 return;
	 }
	
	 $.ajax({
	        url: "${pageContext.request.contextPath}/admin/addNewPhoto",
	        type: "POST",
	        dataType : 'text', 
	        data : {
	        	title:$("#title").val(),
	        	description:$("#description").val(),
	        	imgPath:window.frames["ifm"].document.getElementById("imgshow").alt
	        	},
	        async: false,
	        success: function(data) {
	        	if(data == 0){
		    		alert("发送错误");
		    	}else{
		    		alert("发送成功");
		        	$("#title").val("");
		        	$("#description").val("");
		    	}
	        },
	        error: function(msg) {
	        	alert(msg);
	        }
	   });
}
function cancelEdit(){
	window.location.href="";
}
</script>
</head>
<body>
<div class="div_from_aoto">
       <div class="control-group" >
           <div class="controls">
             <p class="help-block"></p>
             <input id='title' class="input_from" style="width:50%;height:50px;" placeholder="请输入标题" type="text"/>
             <p class="help-block"></p>
           </div>
       </div>
      <div class="control-group">
         	<div class="controls">
			     <textarea id="description" rows="" cols="5" style="width:50%;height:50px;" placeholder="请输入描述"></textarea>
            </div>
            <p class="help-block"></p>
	   </div>
       <div class="control-group">
         	<div class="controls">
               	<form action="${pageContext.request.contextPath}/upload/upload?pathName=photo" method="post" enctype="multipart/form-data" target="ifm"> 
					<input type="file" id="meizz" name="photo" style="display: none" onchange="document.all.btn.click()"/>
					<input type="button" value="选择照片" onclick="document.all.meizz.click()"/>
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
					<input id="btn" type="submit" style="display: none" value="提交"/>
				<input type="button" class="btn btn-success" style="width:120px;" onclick="publishPhoto()" value="保存"/>
                <input type="button" class="btn btn-warning" style="width:120px;" onclick="cancelEdit()" value="取消"/>
				</form>  

				<iframe id='ifm' name='ifm' style="border: 0px;width: 1024px;height: 768px;" src=""/>
               <div style="clear: both;"></div>
            </div>
	   </div>
        
</div>

</body>
</html>
