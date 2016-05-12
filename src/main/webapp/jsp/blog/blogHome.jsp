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

<script type="text/javascript"> 
$.ajax({
        url: "${pageContext.request.contextPath}/blog/photoItem",
        type: "GET",
        dataType: "json",
        data: "",
        async: true,
        success: function(data) {
        	for(var i=0;i<data.length;i++){
        		$("#photomenu").append("<li><a href='#'>"+ data[i].groupName +"</a></li>");
        	}
        },
        error: function(msg) {
        	alert("错误提示",msg);
        }
   });
</script>

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
            
            <div class="post-item last_post">
            	<div class="post-meta">
                	<img src="${pageContext.request.contextPath}/images/author.png" alt="post author image" />
                    <div class="post-meta-content">
                    	<h2>Nullam Non Turpis Eros Non Euismod</h2>
                        Posted by <span><a href="#">Admin</a></span>
                        | <span><a href="#">18 January 2084</a></span>
                        in <span><a href="#">Free</a>, <a href="#">Templates</a></span>
                    </div>
                    <span class="post_comment">10</span>
                    <div class="clear"></div>
				</div>
                <img class="img_border_b img_nom" src="${pageContext.request.contextPath}/images/blog/01.jpg" alt="Post Image 2" />
                <p>Donec non lectus urna, sed ornare magna. Morbi fringilla lorem at nulla porttitor et semper quam molestie. Nullam justo nisl, feugiat non tempor a, luctus imperdiet magna. Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est, sit amet auctor metus neque ut nisl. Validate <a href="#" ><strong>XHTML</strong></a> &amp; <a href="#" ><strong>CSS</strong></a>.</p>
                <a class="more" href="fullpost.html">More</a>
                </div>
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
                <p>Pellentesque elementum posuere mauris vitae dictum. Cras enim sem, molestie vel tempor eu, laoreet dapibus purus. Mauris pharetra tristique imperdiet felis, eu vulputate ipsum. Mauris euismod viverra arcu.</p>
                <a href="#" class="more">More</a>
            </div>
      </div>
        
        <div class="clear"></div>


</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col">
            <h4>Photo Gallery</h4>
            <ul class="nobullet footer_gallery">
                <li><a href="${pageContext.request.contextPath}/images/portfolio/02.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_02.png" alt="image 2" /></a></li>
                <li><a href="${pageContext.request.contextPath}/images/portfolio/03.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_03.png" alt="image 3" /></a></li>
                <li><a href="${pageContext.request.contextPath}/images/portfolio/04.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_04.png" alt="image 4" /></a></li>
                <li><a href="${pageContext.request.contextPath}/images/portfolio/05.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_05.png" alt="image 5" /></a></li>
                <li><a href="${pageContext.request.contextPath}/images/portfolio/03.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_06.png" alt="image 6" /></a></li>
                <li><a href="${pageContext.request.contextPath}/images/portfolio/01.jpg" rel="lightbox[gallery]"><img src="${pageContext.request.contextPath}/images/templatemo_image_07.png" alt="image 7" /></a></li>
            </ul>
            <div class="clear"></div>
            <a href="portfolio.html" class="more">View all</a>
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
</html>