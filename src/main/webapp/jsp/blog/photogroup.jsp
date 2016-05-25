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
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ddsmoothmenu.js">


/***********************************************
* Smooth Navigational Menu- (c) Dynamic Drive DHTML code library (www.dynamicdrive.com)
* This notice MUST stay intact for legal use
* Visit Dynamic Drive at http://www.dynamicdrive.com/ for full source code
***********************************************/

</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
});

</script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="${pageContext.request.contextPath}/js/slimbox2.js"></script> 

</head>
<body id="subpage">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/blog/blogHome">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=1&pageSize=3"  >日志</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=1&pageSize=4"  class="selected">相册</a>
                    <ul id="photomenu">
                  </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/blog/about">关于我</a>
                    <ul>
                        <li><a href="#">个人独白</a></li>
                        <li><a href="${pageContext.request.contextPath}/aboutme/personExp">个人经历</a></li>
                        <li><a href="${pageContext.request.contextPath}/aboutme/personResume">我的简历</a></li>
                  </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/blog/contact">联系我</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- END of header -->
    
    <div id="templatemo_page_intro">
    	<h1>我的相册</h1>
        <p>记录生活的点滴。。。</p>
    </div>
    
    
    <div id="templatemo_main">
    	<c:forEach items="${grouplist }" var="group" varStatus="row">
    	<c:if test=""></c:if>
	    	<div class="col col_2 <c:if test='${row.index % 2 ne 0}'>no_mr</c:if>">
	        	<img src="${pageContext.request.contextPath}${group.imgPath}" alt="image" style="width: 100%;"/>	
	            <p class="image_caption">${group.groupName}
	            <a href="${pageContext.request.contextPath}/blog/photoHome?group=${group.groupName}" class="more">详细</a>
	            </p>
	        </div>
	        <c:if test='${row.index % 2 ne 0}'>
                <div class="clear"></div>
            </c:if>
        </c:forEach>
            
        <div class="clear"></div>
        
        <div class="templatemo_paging">
            <ul>
                <c:if test="${page.pageNo ne 1}">
               	    <li><a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=${page.pageNo - 1}&pageSize=${page.pageSize }" target="_parent">Previous</a></li>
                </c:if>
                <c:forEach items="${page.pageNoList }" var="item" varStatus="row">
                    <li ><a style="<c:if test='${row.index + 1 eq page.pageNo}'>color: white;</c:if>" href="${pageContext.request.contextPath}/blog/photogroup?pageNo=${row.index + 1}&pageSize=${page.pageSize }" target="_parent" >${row.index + 1}</a></li>
	            </c:forEach>
                <c:if test="${page.pageNo * page.pageSize lt page.count}">
                    <li><a  href="${pageContext.request.contextPath}/blog/photogroup?pageNo=${page.pageNo + 1}&pageSize=${page.pageSize }" target="_parent">Next</a></li>
                </c:if>
            </ul>
            <div class="clear"></div>
        </div>
            
    </div> <!-- END of main -->
</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col ">
            <h4>照片墙</h4>
            <ul id="imgfoot" class="nobullet footer_gallery">
            </ul>
            <div class="clear"></div>
            <a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=1&pageSize=4" class="more">全部</a>
        </div>
        
        <div class="clear"></div>
    </div> <!-- END of bottom -->
    
</div> <!-- END of bottom wrapper -->

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	Copyright © 2084 Company Name ptghb
    </div> <!-- END of footer -->
</div> <!-- END of footer wrapper -->


</body>
<script type="text/javascript"> 
$.ajax({
        url: "${pageContext.request.contextPath}/blog/photoItem",
        type: "GET",
        dataType: "json",
        data: "",
        async: true,
        success: function(data) {
        	for(var i=0;i<data.length;i++){
        		$("#photomenu").append("<li><a href='${pageContext.request.contextPath}/blog/photoHome?group="+data[i].groupName+"'>"+ data[i].groupName +"</a></li>");
        	}
        },
        error: function(msg) {
        	alert("错误提示",msg);
        }
   });
   
$.ajax({
    url: "${pageContext.request.contextPath}/blog/photoFoot",
    type: "GET",
    dataType: "json",
    data: "",
    async: false,
    success: function(data) {
    	for(var i=0;i<data.length;i++){
    		$("#imgfoot").append("<li><a href='${pageContext.request.contextPath}"+ data[i].imgPath +"' rel='lightbox[gallery]'><img src='${pageContext.request.contextPath}"+ data[i].imgPath +"' alt='"+data[i].title+"' /></a></li>");
    	}
    },
    error: function(msg) {
    	alert("错误提示",msg);
    }
});
</script>
</html>