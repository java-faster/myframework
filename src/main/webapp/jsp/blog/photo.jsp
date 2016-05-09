<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Runner, Portfolio, Gallery</title>
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
                <li><a href="${pageContext.request.contextPath}/blog/blogHome" >主页</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=1&pageSize=3"  >日志</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/photo" class="selected">相册</a>
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
    	<h1>我的相册</h1>
        <p>记录生活的点滴。。。</p>
    </div>
    
    
    <div id="templatemo_main">
    
    	<div class="col col_2">
        	<img src="${pageContext.request.contextPath}/images/portfolio/01.jpg" alt="image" />	
            <p class="image_caption">Pellentesque blandit, nisl tempus ullamcorper sollicitudin, lorem ipsum ultricies nunc, ac sollicitudin dolor mauris a est. Praesent at ultricies lacus. Sed id massa quam. Validate <a href="#" ><strong>XHTML</strong></a> &amp; <a href="#" ><strong>CSS</strong></a>.
            <a href="#" class="more">Visit</a>
            </p>
        </div>
        
        <div class="col col_2 no_mr">
        	<img src="${pageContext.request.contextPath}/images/portfolio/02.jpg" alt="image" />	
            <p class="image_caption">Donec id magna ut mauris ultricies vulputate et a lectus. Fusce eget risus lorem, sed ornare nunc. Praesent eget leo quis lorem pulvinar bibendum sed sit amet nibh.  
            <a href="#" class="more">Visit</a>
            </p>	
        </div>
        
        <div class="clear"></div>
        
        <div class="col col_2">
        	<img src="${pageContext.request.contextPath}/images/portfolio/03.jpg" alt="image" />	
            <p class="image_caption">Suspendisse eget erat neque, id ultricies eros. Aenean eu felis vel arcu imperdiet rhoncus ut consectetur erat. Suspendisse pretium, quam ac lobortis cursus at vulputate est purus in ante.
            <a href="#" class="more">Visit</a>
            </p>
        </div>
        
        <div class="col col_2 no_mr">
        	<img src="${pageContext.request.contextPath}/images/portfolio/04.jpg" alt="image" />	
            <p class="image_caption">Donec non lectus urna, sed ornare magna. Morbi fringilla lorem at nulla porttitor et semper quam molestie. Nullam justo nisl, feugiat non tempor a, luctus imperdiet magna.
            <a href="#" class="more">Visit</a>
            </p>	
        </div>
        
        <div class="clear"></div>
            
            <div class="templatemo_paging">
                <ul>
                    <li><a  href="http://www.cssmoban.com" target="_parent">Previous</a></li>
                    <li><a  href="http://www.cssmoban.com/" target="_parent">1</a></li>
                    <li><a  href="http://www.cssmoban.com/" target="_parent">2</a></li>
                    <li><a  href="http://www.cssmoban.com/" target="_parent">3</a></li>
                    <li><a  href="http://www.cssmoban.com/" target="_parent">4</a></li>
                    <li><a  href="http://www.cssmoban.com/" target="_parent">5</a></li>
                    <li><a  href="http://www.cssmoban.com/page/6" target="_parent">6</a></li>
                    <li><a  href="http://www.cssmoban.com/page/7" target="_parent">Next</a></li>
                </ul>
                <div class="clear"></div>
            </div>
            
    </div> <!-- END of main -->
</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col col_3">
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
    	
        <div class="col col_3">
        	<h4>Twitter</h4>
      		<ul class="nobullet twitter">
                <li><a href="#">@网站模板</a> Proin turpis nisi, placerat quis orci ac, tempor iaculis eros.</li>
                <li>Suspendisse enean <a href="#">#FREE</a> website template, mi lacus gravida nisi, vitae commodo orci nisi non nulla.</li>
                <li>Sed non varius lorem, in sollicitudin lectus. Cras vel urna a urna gravida consequat. Curabitur non risus dui. <a  href="#">#</a></li>
                <li><a href="#" title="" class="rower"  target="_blank"></a></li>
            </ul>
        </div>
        
        <div class="col col_3 no_mr">
        	<h4>Follow Us</h4>
            <ul class="nobullet social">
            	<li><a  href="#/templatemo" class="facebook">Facebook</a></li>
                <li><a href="#" class="twitter">Twitter</a></li>
                <li><a href="#" class="youtube">Youtube</a></li>
                <li><a href="#" class="google">Google+</a></li>
                <li><a href="#" class="vimeo">Vimeo</a></li>
                <li><a href="#" class="skype">Skype</a></li>
            </ul>
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