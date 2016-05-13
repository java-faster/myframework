<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>葛宏斌的世界</title>
<meta name="keywords" content="runner, templatemo, free web template, black, white, CSS, HTML" />
<meta name="description" content="Runner Theme is a stylish website template by templatemo.com for free download. Homepage is integrated with curved beautiful slider." />
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
})

</script>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="${pageContext.request.contextPath}/js/slimbox2.js"></script>

</head>
<body id="home">

<div id="templatemo_wrapper">

	<div id="templatemo_header">
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/blog/blogHome" class="selected">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=1&pageSize=3"  >日志</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=1&pageSize=4">相册</a>
                    <ul id="photomenu">
                  </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/blog/about">关于我</a>
                    <ul>
                        <li><a href="#">个人独白</a></li>
                        <li><a href="#">个人经历</a></li>
                        <li><a href="#">我的简历</a></li>
                  </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/blog/contact">联系我</a></li>
            </ul>
            <br style="clear: left" />
        </div> <!-- end of templatemo_menu -->
    </div> <!-- END of header -->
    
    <div id="templatemo_slider"><span class="sliderframe"></span>
    	 <div class="slider-wrapper theme-orman">
            <div id="slider" class="nivoSlider">
            	<c:forEach items="${photoLastGroupList }" var="photo" varStatus="row">
                    <a  href="">
                	    <img src="${pageContext.request.contextPath}${photo.imgPath}" alt="slider image" title="${photo.title}"/>
                    </a>
                </c:forEach>
            </div>
        </div> 
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.nivo.slider.pack.js"></script>
        <script type="text/javascript">
        $(window).load(function() {
            $('#slider').nivoSlider({
				controlNav:false,
   			    directionNavHide: false,
   			    randomStart:true
			});
        });
        </script>
    </div><!-- END of templatemo_slider -->
    
    <div id="templatemo_twitter">
    	欢迎来到葛宏斌的家园。。。
    </div> <!-- END of twitter -->
    
    <div id="templatemo_main">
    
    	<div id="templatemo_content" class="left">
            
            <hr />
            <c:forEach items="${bloglist }" var="blog" varStatus="row">
	            <div class="post-item last_post">
	            	<div class="post-meta">
	                	<img src="${pageContext.request.contextPath}/images/author.png" alt="post author image" />
	                    <div class="post-meta-content">
	                    	<h2>${blog.title}</h2>
	                        Posted by <span><a href="#">葛宏斌</a></span>
	                		| <span><a href="#"><fmt:formatDate value="${blog.addTime}" pattern="yyyy-MM-dd"/></a></span>
	                        in <span><a href="#">${blog.location}</a></span>
	                    </div>
	                    <span class="post_comment">${blog.commentCount}</span>
	                    <div class="clear"></div>
					</div>
	                <img class="img_border_b img_nom" src="${pageContext.request.contextPath}${blog.img}" alt="Post Image 1" />
	                <p>${blog.description}</p>
	                <a class="more" href="${pageContext.request.contextPath}/blog/blogDetail?id=${blog.id}">详细</a>
	            </div>
            </c:forEach>

            </div>
		
        </div> <!-- END of content -->
                
		<div id="templatemo_sidebar" class="right">
			
			<div class="sidebar_section">
                <h2>留言</h2>
                <img src="${pageContext.request.contextPath}/images/templatemo_image_01.jpg" alt="services" class="img_nom img_border" />
                <p><em>Ut non nibh vel leo dapibus gravida et at dolor. Nullam non turpis eros, non euismod velit. </em></p>
                <ul class="list_bullet">
                    <li><a href="#">Cras eu elit hendrerit</a></li>
                    <li><a href="#">Aliquam erat volutpat</a></li>
                    <li><a href="#">Aliquam adipiscing</a></li>
                    <li><a href="#">Etiam ligula libero</a></li>
                    <li><a href="#">Phasellus lorem erat</a></li>
                </ul>
                <a href="#" class="more">More</a>
			</div>
            <div class="sidebar_section">
            	<h2>关于我</h2>
                <p>此人屌炸天</p>
                <a href="${pageContext.request.contextPath}/blog/about" class="more">更多</a>
            </div>
      </div>
        
        <div class="clear"></div>


</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col">
            <h4>照片墙</h4>
            <ul id="imgfoot" class="nobullet footer_gallery"></ul>
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
<script type='text/javascript' src='${pageContext.request.contextPath}/js/logging.js'></script>
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