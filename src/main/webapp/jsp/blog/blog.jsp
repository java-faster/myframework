<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>葛宏斌的世界</title>
<meta name="keywords" content="runner, blog posts, free template, CSS, HTML" />
<meta name="description" content="Runner, Blog Posts, free blog template by templatemo.com" />
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
<body id="subpage">

<div id="templatemo_wrapper">
	<div id="templatemo_header">
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/blog/blogHome">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=1&pageSize=3"  class="selected">日志</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=1&pageSize=4">相册</a>
                    <ul>
                        <li><a href="#">2016-01-05</a></li>
                        <li><a href="#">2016-01-04</a></li>
                        <li><a href="#">2016-01-03</a></li>
                        <li><a href="#">2016-01-02</a></li>
                        <li><a href="#">2016-01-01</a></li>
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
    
    <div id="templatemo_page_intro">
    	<h1>我的日志</h1>
        <p>记录我的感悟，学习笔记，旅行日志，书评，以及各种琐事。。。</p>
    </div>
    
    
    <div id="templatemo_main">
    	<div id="templatemo_content" class="left">
    		<c:forEach items="${bloglist }" var="blog" varStatus="row">
            <div class="post-item">
            	<div class="post-meta">
                	<img src="${pageContext.request.contextPath}/images/author.png" alt="post author image" />
                    <div class="post-meta-content">
                    	<h2>${blog.title}</h2>
                        Posted by <span>葛宏斌</span>
                		| <span><a href="#"><fmt:formatDate value="${blog.addTime}" pattern="yyyy-MM-dd"/></a></span>
                        in <span><a href="#">${blog.location}</a></span>
                    </div>
                    <span class="post_comment">${blog.commentCount}</span>
                    <div class="clear"></div>
				</div>
                <img class="img_border_b img_nom" src="${pageContext.request.contextPath}${blog.img}" alt="Post Image 1" />
                <p>${blog.description}</p>
                <a class="more" href="fullpost.html">详细</a>
			</div>
			</c:forEach>
            
            <div class="clear"></div>
            
            <div class="templatemo_paging">
                <ul>
                    <c:if test="${pageNo ne 1}">
                   	    <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=${pageNo - 1}&pageSize=3" target="_parent">Previous</a></li>
                    </c:if>
                    <c:forEach items="${pageNoList }" var="item" varStatus="row">
                    <li ><a style="<c:if test='${row.index + 1 eq pageNo}'>color: white;</c:if>" href="${pageContext.request.contextPath}/blog/blog?pageNo=${row.index + 1}&pageSize=3" target="_parent" >${row.index + 1}</a></li>
					</c:forEach>
                    <c:if test="${pageNo * pageSize lt blogcount}">
                        <li><a  href="${pageContext.request.contextPath}/blog/blog?pageNo=${pageNo + 1}&pageSize=3" target="_parent">Next</a></li>
                    </c:if>
                </ul>
                <div class="clear"></div>
            </div>
            
        </div> <!-- END of content -->
                
		<div id="templatemo_sidebar" class="right">
			
			<div class="sidebar_section sidebar_section_bg">
                <h3>分类</h3>
                <ul class="sidebar_link_list">
                	<c:forEach items="${categoriesList }" var="categories" varStatus="row">
                    	<li><a href="#">${categories.name }</a></li>
                    </c:forEach>
                </ul>
			</div>
            
            <div class="sidebar_section sidebar_section_bg">
                <h3>Recent Comments</h3>
                <ul class="sidebar_link_list comment">
                    <li>
                    	<span>Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est...</span>
                        <span class="comment_meta">
		                    <strong>Van</strong> on <a href="#">Quisque dolor dolor</a>
						</span>
					</li>
                    <li>
                    	<span>Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est...</span>
                        <span class="comment_meta">
		                    <strong>George</strong> on <a href="#">Curabitur Mollis Justo</a>
						</span>
					</li>
                    <li>
                    	<span>Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est...</span>
                        <span class="comment_meta">
		                    <strong>Walker</strong> on <a href="#">Praesent venenatis ante neque</a>
						</span>
					</li>
                    <li>
                    	<span>Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est...</span>
                        <span class="comment_meta">
		                    <strong>David</strong> on <a href="#">Etiam dictum pulvinar neque</a>
						</span>
					</li>
                    <li>
                    	<span>Donec rhoncus, neque quis dapibus dapibus, lorem tortor semper est...</span>
                        <span class="comment_meta">
		                    <strong>Zoom</strong> on <a href="#">Maecenas fringilla felis quis</a>
						</span>
					</li>
                </ul>
            </div>
            
            <div class="sidebar_section sidebar_section_bg">
                <h3>友情链接</h3>
                <ul class="sidebar_link_list">
                    <li><a href="#">Mauris vel gravida est</a></li>
                    <li><a href="#">Duis in libero est</a></li>
                    <li><a href="#">Nulla luctus nisl nec orci</a></li>
                    <li><a href="#">Cras in metus vulputate</a></li>
                    <li><a href="#">Consectetur adipiscing eli</a></li>
                    <li><a href="#">Nullam vulputate est</a></li>
                    <li><a href="#">Duis porta velit</a></li>
                    <li><a href="#">Pretium suscipit</a></li>
                </ul>
			</div>
            
      </div>
        
        <div class="clear"></div>
                
    </div> <!-- END of main -->
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