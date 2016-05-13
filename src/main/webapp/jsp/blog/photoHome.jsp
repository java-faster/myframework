<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>葛宏斌的世界</title>
<meta name="keywords" content="runner, portfolio, gallery, free template, CSS, HTML, templatemo" />
<meta name="description" content="Runner, Portfolio, Gallery, free website template by templatemo.com" />
<link href="${pageContext.request.contextPath}/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ddsmoothmenu.css" />

<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/style/common.css" />
<script language="javascript" type="text/javascript" src="${pageContext.request.contextPath}/js/effect.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="${pageContext.request.contextPath}/js/slimbox2.js"></script> 
<script type="text/javascript"> 
var picSrc="${pageContext.request.contextPath}/GamePic/";
var pics=new Array();

$.ajax({
        url: "${pageContext.request.contextPath}/blog/photo?group=${group}",
        type: "GET",
        dataType: "json",
        data: "",
        async: true,
        success: function(data) {
        	
        	for(var i=0;i<data.length;i++){
               	var item = new Object();
            	item.s = "${pageContext.request.contextPath}" + data[i].imgPath;
            	item.b = "${pageContext.request.contextPath}" + data[i].imgPath;
            	pics[i] = item;
        	}
        	
        	document.getElementById("btn").click();
        },
        error: function(msg) {
        	alert("错误提示",msg);
        }
   });
   
function photo(e){
	e.style.display="none";
	var newPhotoShow=new picShow(pics);
	newPhotoShow.photoBtn=e;
}
</script>

</head>
<body>
<a id="btn" href="javascript:;" onclick="photo(this);" title="打开相册" style="display:none;">打开相册</a>
</body>
</html>