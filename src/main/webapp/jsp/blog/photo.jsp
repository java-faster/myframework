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

</head>
</body>
<script type="text/javascript">
var picSrc="GamePic/"
var pics={p1:{s:picSrc+"1s.jpg",b:picSrc+"1.jpg"},p2:{s:picSrc+"2s.jpg",b:"http://hiphotos.baidu.com/0011fx/pic/item/68d41bfd2e7980b0fd037fa9.jpg"},p3:{s:picSrc+"3s.jpg",b:picSrc+"3.jpg"},p4:{s:picSrc+"4s.jpg",b:picSrc+"4.jpg"},p5:{s:picSrc+"5s.jpg",b:picSrc+"5.jpg"},p6:{s:picSrc+"3s.jpg",b:picSrc+"3.jpg"},p7:{s:picSrc+"4s.jpg",b:picSrc+"4.jpg"},p8:{s:picSrc+"5s.jpg",b:picSrc+"5.jpg"},p9:{s:picSrc+"1s.jpg",b:picSrc+"1.jpg"},p10:{s:picSrc+"2s.jpg",b:"http://hiphotos.baidu.com/0011fx/pic/item/68d41bfd2e7980b0fd037fa9.jpg"},p11:{s:picSrc+"3s.jpg",b:picSrc+"3.jpg"},p12:{s:picSrc+"4s.jpg",b:picSrc+"4.jpg"},p13:{s:picSrc+"5s.jpg",b:picSrc+"5.jpg"},p14:{s:picSrc+"3s.jpg",b:picSrc+"3.jpg"},p15:{s:picSrc+"4s.jpg",b:picSrc+"4.jpg"},p16:{s:picSrc+"5s.jpg",b:picSrc+"5.jpg"}}
function photo(e){
	e.style.display="none";
	var newPhotoShow=new picShow(pics);
	newPhotoShow.photoBtn=e;
}
</script>
</html>