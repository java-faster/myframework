<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<!--[if gte IE 9]>  <html class="ie9" lang="en">    <![endif]-->
<!--[if gte IE 8]>  <html class="ie8" lang="en">    <![endif]-->

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>葛宏斌的简历</title>

<meta name="description" content="" />
<meta name="author" content="" />

<!-- CSS  -->
<link href="${pageContext.request.contextPath}/css/master.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/theme/themeBlue.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/flexslider.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/lightbox.css" rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/css/jpreloader.css" rel="stylesheet" type="text/css" />

<!-- Fonts  -->
<link href='${pageContext.request.contextPath}/fonts/css' rel='stylesheet' type='text/css' />

<!-- Scripts  -->
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1-7-2.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.isotope.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/lightbox.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jpreLoader.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>

<!--引用百度地图API-->
<style type="text/css">
    html,body{margin:0;padding:0;}
    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}
    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}
</style>
<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>

<script type="text/JavaScript">
function sendMsg(){
	var name = $("#name").val();
	var email = $("#email").val();
	var content = $("#message").val();
	
	$.ajax({
	    url: "${pageContext.request.contextPath}/aboutme/sendEmail",
	    type: "POST",
	    dataType: "text/html",
	    data: {
	    	name : name,
	    	email : email,
	    	content : content
	    },
	    async: true,
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
</script>

</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
	<!-- Header -->
	<div id="header">
    	<div id="header-inner" class="inner">
        	<ul id="menu">
            	<li class="menu-list"><div id="menu-intro" class="menu-icon menu-active">Intro</div><a href="#" class="menu-hover">Intro</a></li>
            	<li class="menu-list menu-click"><div id="menu-resume" class="menu-icon">Intro</div><a href="#" class="menu-hover">Resume</a></li>
            	<li class="menu-list menu-click"><div id="menu-portfolio" class="menu-icon">Intro</div><a href="#" class="menu-hover">Portfolio</a></li>
            	<li class="menu-list menu-click"><div id="menu-contact" class="menu-icon">Intro</div><a href="#" class="menu-hover">Contact</a></li>
            </ul>
            
            <!-- Slider -->
            <div id="menu-slider">
                <div id="menu-slider-container">
                    <div class="slider-bg bg-black"></div> <!-- Slider Background -->
                    <div id="menu-slider-bar" class="slider-bar color-bar animate-bar"></div> <!-- Slider Bar -->
                    <div id="menu-slider-pointer" class="slider-pointer color-pointer"></div> <!-- Slider Pointer -->
                </div>
            </div>
            <!-- End Slider -->
            
        </div>
    </div>
	<!-- End Header -->
    
    <!-- Content -->
    <div id="content" class="inner">
    	<!-- Title -->
        <h1 class="title-active">HOME</h1>
        <h1>ABOUT</h1>
        <h1>RESUME</h1>
        <h1>PORTFOLIO</h1>
        <h1>CONTACT</h1>
    	<!-- End Title -->
        
        <div id="content-wrapper">
            <div id="content-header"></div> <!-- Content Header -->
            <div id="content-core-wrapper">
                <div id="content-core">
                    <!-- Intro -->
                    <div id="intro" class="content-list content-list-active">
                        <div class="flexslider">
                            <ul class="slides">
                                <li><img src="${pageContext.request.contextPath}/media/slideshow/slideshow1.png" alt="" /></li>
                                <li><img src="${pageContext.request.contextPath}/media/slideshow/slideshow2.png" alt="" /></li>
                            </ul>
                        </div>
                        
                    	<div class="full-three separator"></div>
                    	
                    	<div class="one-three">
                        	<div class="photo-frame">
                            	<img src="${pageContext.request.contextPath}/media/photos/me.jpg" alt="Photo of me" />
                            </div>
                        </div>
                    	<div class="two-three">
                            <h2>我叫葛宏斌</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur viverra porta dictum. Nullam sem quam, ultrices semper congue eu, placerat ac quam. Pellentesque tempor nisi eu turpis feugiat ornare. Nullam risus enim, eleifend non imperdiet vel, fermentum quis tellus. Nulla pretium orci nec metus lobortis non convallis sem porta. Praesent hendrerit adipiscing mauris vitae sodales. Proin eget risus in velit blandit rhoncus imperdiet at mi. Sed eleifend, augue et tincidunt condimentum, massa tellus hendrerit odio, vel vehicula leo ligula sed lorem. Quisque adipiscing, enim vel iaculis venenatis, velit leo viverra tellus, ac sagittis neque velit in sem. Sed elementum tincidunt velit, ac gravida magna aliquam ac. Sed viverra mollis nisl, at ullamcorper mauris condimentum vel. Vestibulum nisl mi, lacinia rhoncus congue sit amet, convallis eget quam. Vestibulum interdum imperdiet justo laoreet tempor. </p>
                            <p>Morbi ultrices malesuada nisi, quis elementum velit blandit ac. Fusce auctor ornare lectus, in feugiat 
    nisi pretium non. Nam dignissim rutrum diam in feugiat. Vivamus varius dictum malesuada. Quisque 
    elit quam, lobortis ut euismod ac, feugiat nec mi. Morbi sed turpis nec lacus aliquam vulputate a vitae 
    erat. Maecenas non risus dolor. Etiam mi nulla, rhoncus in aliquet eu, venenatis feugiat sapien. 
    Vestibulum sapien ipsum, egestas sed consequat eget, auctor nec erat. </p>
                    	</div>
                        
                        <div class="clearfix"></div>
                    </div>
                    <!-- End Intro -->
                    
                    <!-- Resume -->
                    <div id="resume" class="content-list">
                    	<div class="one-three">
                        	<div class="photo-frame">
                            	<img src="${pageContext.request.contextPath}/media/photos/me.jpg" alt="Photo of me" />
                            </div>
                        </div>
                    	<div class="two-three">
                        	<div class="group-container">
                                <h2>About me</h2>
                                <div class="resume-group">
                                    <div class="resume-label">Name</div>
                                    <div class="resume-info">葛宏斌</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">Date of birth</div>
                                    <div class="resume-info">Feb, 08 1991</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">Address</div>
                                    <div class="resume-info">北京市昌平区合立方小区2楼2单元1006</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">Email</div>
                                    <div class="resume-info">ptghb@qq.com</div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">Phone</div>
                                    <div class="resume-info">18810885434</div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            
                        	<div class="group-container">
                                <h2>专业技能</h2>
                                <div class="resume-group">
                                    <div class="resume-label">Java</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level9"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">Spring</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level5"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">mybatis</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level4"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">mysql</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level9"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">tomcat</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level8"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="resume-group">
                                    <div class="resume-label">jQuery</div>
                                    <div class="resume-info">
                                    	<div class="resume-bar">
                                            <div class="slider-bg bg-grey"></div> <!-- Slider Background -->
                                            <div class="slider-bar color-bar level6"></div> <!-- Slider Bar -->
                                        </div>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                    	</div>
                        
                    	<div class="full-three">
                        	<div class="group-container">
                                <h2>Education</h2>
                                <div class="resume-group">
                                    <h3>武汉科技大学 - 软件工程, 2009.9 ~ 2013.6</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas erat nunc. Phasellus vel orci ligula. Quisque dignissim velit vel augue adipiscing quis porta neque congue. Aliquam vulputate, odio sed rutrum eleifend, nisi mi facilisis turpis, ut sodales quam lectus eu felis. Pellentesque justo magna, tincidunt vel dignissim nec, tincidunt id nisi. Maecenas varius quam at ante laoreet quis semper ante egestas. In et velit dui. Sed porttitor condimentum rhoncus. </p>
                                </div>
                            </div>
                        </div>
                        
                    	<div class="full-three">
                        	<div class="group-container">
                                <h2>Experience</h2>
                                <div class="resume-group">
                                    <h3>苏州凌志软件 - 初级软件设计师, 2013.7 ~ 2015.12</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas erat nunc. Phasellus vel orci ligula. Quisque dignissim velit vel augue adipiscing quis porta neque congue. Aliquam vulputate, odio sed rutrum eleifend, nisi mi facilisis turpis, ut sodales quam lectus eu felis. Pellentesque justo magna, tincidunt vel dignissim nec, tincidunt id nisi. Maecenas varius quam at ante laoreet quis semper ante egestas. In et velit dui. Sed porttitor condimentum rhoncus. </p>
                                </div>
                                
                                <div class="resume-group">
                                    <h3>北京中鼎博华 - 中级软件设计师, 2016.3 - NOW</h3>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas erat nunc. Phasellus vel orci ligula. Quisque dignissim velit vel augue adipiscing quis porta neque congue. Aliquam vulputate, odio sed rutrum eleifend, nisi mi facilisis turpis, ut sodales quam lectus eu felis. Pellentesque justo magna, tincidunt vel dignissim nec, tincidunt id nisi. Maecenas varius quam at ante laoreet quis semper ante egestas. In et velit dui. Sed porttitor condimentum rhoncus. </p>
                                </div>
                            </div>
                        </div>
                        
                        <div class="clearfix"></div>
                    </div>
                    <!-- End Resume -->
                    
                    <!-- Portfolio -->
                    <div id="portfolio" class="content-list">
                        <!-- Portfolio Filter -->
                        <div id="portfolio-filter-container">
                            <ul id="portfolio-filter">
                                <li><a href="#" class="current" data-filter="*">All</a></li>
                                <li><a href="#" data-filter=".animation">Animation</a></li>
                                <li><a href="#" data-filter=".photography">Photoghraphy</a></li>
                                <li><a href="#" data-filter=".webdesign">Web Design</a></li>
                                <li><a href="#" data-filter=".printdesign">Print Design</a></li>
                            </ul>
                        </div>
                        <!-- End Portfolio Filter -->
                        
                        <!-- Portfolio Lists -->
                        <ul id="portfolio-list">
                            <li class="photography">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview1.jpg" rel="lightbox[portfolio]" title="Photography">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo1.jpg" alt="" />
                                </a>
                            </li>
                            <li class="animation">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview2.jpg" rel="lightbox[portfolio]" title="Animation">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo2.jpg" alt="" />
                                </a>
                            </li>
                            <li class="animation">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview3.jpg" rel="lightbox[portfolio]" title="Animation">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo3.jpg" alt="" />
                                </a>
                            </li>
                            <li class="printdesign">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview4.jpg" rel="lightbox[portfolio]" title="Print Design">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo4.jpg" alt="" />
                                </a>
                            </li>
                            <li class="animation">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview5.jpg" rel="lightbox[portfolio]" title="Animation">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo5.jpg" alt="" />
                                </a>
                            </li>
                            <li class="animation">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview6.jpg" rel="lightbox[portfolio]" title="Animation">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo6.jpg" alt="" />
                                </a>
                            </li>
                            <li class="webdesign">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview7.jpg" rel="lightbox[portfolio]" title="Web Design">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo7.jpg" alt="" />
                                </a>
                            </li>
                            <li class="printdesign">
                                <a href="${pageContext.request.contextPath}/media/portfolio/preview8.jpg" rel="lightbox[portfolio]" title="Print Design">
                                    <img src="${pageContext.request.contextPath}/media/portfolio/photo8.jpg" alt="" />
                                </a>
                            </li>
                        </ul>
                        <!-- End Portfolio Lists -->
                        
                    </div>
                    <!-- End Portfolio -->
                    
                    <!-- Contact -->
                    <div id="contact" class="content-list content-contact">
                    	<div class="full-three">
                        	<div id="gmap-container">
                        		<div id="gmap">
                        		    <!--百度地图容器-->
                                    <div style="width:100%;height:100%;border:#ccc solid 1px;" id="dituContent"></div>
                        		</div>
                            </div>
                        </div>
                        
                    	<div class="full-three separator"></div>
                        
                    	<div class="two-three">
                            <h2>联系我</h2>
                            <form id="contact-form"  />
                            	<div class="form-component">
                                    <h3>Name</h3>
                                    <input type="text" class="input textfield" name="name" id="name"/>
                                </div>
                                
                            	<div class="form-component">
                                    <h3>Email</h3>
                                    <input type="text" class="input textfield" name="email" id="email"/>
                                </div>
                                
                            	<div class="form-component">
                            		<h3>Message</h3>
                                	<textarea class="input textarea" name="message" id="message"></textarea>
                                </div>
                                
                                <input type="button" class="btn" value="发送邮件" onclick="return sendMsg();" />
                            </form>
                            
                    	</div>
                    	<div class="one-three">
                            <h2>联系方式</h2>
                            <h3>Address</h3>
                            <p>北京市昌平区合立方小区2号楼2单元1006</p>
                            <h3>Phone</h3>
                            <p>18810885434</p>
                            <h3>Email</h3>
                            <p>ptghb@qq.com</p>
                            <h3>Web</h3>
                            <p>http://www.gehongbin.cn</p>
                        </div>
                        
                        <div class="clearfix"></div>
                    </div>
                    <!-- End Contact -->
                </div>
            </div>
            <div id="content-footer"></div> <!-- Content Footer -->
            
        </div>
        
        <!-- Social Media -->
        <div id="socmed">
            <ul id="socmed-list">
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/facebook.png" alt="Facebook" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/twitter.png" alt="Twitter" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/dribble.png" alt="Dribble" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/flickr.png" alt="Flickr" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/skype.png" alt="Skype" /></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath}/media/social/google.png" alt="Google" /></a></li>
            </ul>
        </div>
        <!-- End Social Media -->
        
    </div>
    <!-- End Content -->
    
	<!-- Footer -->
	<div id="footer">
    	<div id="footer-inner" class="inner"> Copyright © Sandy Ricardo 2016 - 葛宏斌</div>
    </div>
	<!-- End Footer -->
    
</div>
<!-- End Wrapper -->



<!-- This section is for Splash Screen -->
<div id="preloader-container">
    <div id="preloader">
        <div id="preloader-photo"><img src="${pageContext.request.contextPath}/media/photos/me.jpg" alt="Photo of me" /></div>
        <div id="preloader-title">
        	<h1>PERSONAL VCARD</h1>
            UX & INTERACTIVE DESIGNER
        </div>
    </div>
</div>
<div id="jSplash"></div>
<!-- End of Splash Screen -->



<!-- External script put in the bottom of the page to cut load time -->
<!-- <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script> -->
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap(){
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }
    
    //创建地图函数：
    function createMap(){
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(116.41613,40.061929);//定义一个中心点坐标
        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }
    
    //地图事件设置函数：
    function setMapEvent(){
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)
        map.enableKeyboard();//启用键盘上下左右键移动地图
    }
    
    //地图控件添加函数：
    function addMapControl(){
        //向地图中添加缩放控件
	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});
	map.addControl(ctrl_nav);
        //向地图中添加缩略图控件
	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});
	map.addControl(ctrl_ove);
        //向地图中添加比例尺控件
	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});
	map.addControl(ctrl_sca);
    }
    
    //标注点数组
    var markerArr = [{title:"我的位置",content:"我的位置",point:"116.416243|40.062067",isOpen:0,icon:{w:21,h:21,l:0,t:0,x:6,lb:5}}
		 ];
    //创建marker
    function addMarker(){
        for(var i=0;i<markerArr.length;i++){
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0,p1);
			var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point,{icon:iconImg});
			var iw = createInfoWindow(i);
			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});
			marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                        borderColor:"#808080",
                        color:"#333",
                        cursor:"pointer"
            });
			
			(function(){
				var index = i;
				var _iw = createInfoWindow(i);
				var _marker = marker;
				_marker.addEventListener("click",function(){
				    this.openInfoWindow(_iw);
			    });
			    _iw.addEventListener("open",function(){
				    _marker.getLabel().hide();
			    })
			    _iw.addEventListener("close",function(){
				    _marker.getLabel().show();
			    })
				label.addEventListener("click",function(){
				    _marker.openInfoWindow(_iw);
			    })
				if(!!json.isOpen){
					label.hide();
					_marker.openInfoWindow(_iw);
				}
			})()
        }
    }
    //创建InfoWindow
    function createInfoWindow(i){
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>"+json.content+"</div>");
        return iw;
    }
    //创建一个Icon
    function createIcon(json){
        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})
        return icon;
    }
    
    initMap();//创建和初始化地图
</script>
</body>
</html>
