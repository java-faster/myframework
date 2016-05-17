<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Runner, About Us</title>
<meta name="keywords" content="runner, about us, free template, CSS, HTML" />
<meta name="description" content="Runner, About Us, Multiple Columns, free website template by templatemo.com" />
<link href="${pageContext.request.contextPath}/templatemo_style.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/orman.css" type="text/css" media="screen" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/nivo-slider.css" type="text/css" media="screen" />	

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/ddsmoothmenu.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/ddsmoothmenu.js"></script>

<script type="text/javascript">

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

<style type="text/css">
.radiusbtn{
    -moz-border-radius: 50%;      /* Gecko browsers */
    -webkit-border-radius: 50%;   /* Webkit browsers */
    border-radius:50%;            /* W3C syntax */

}
</style>

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
                <li><a href="${pageContext.request.contextPath}/blog/photogroup?pageNo=1&pageSize=4">相册</a>
                    <ul id="photomenu">
                  </ul>
                </li>
                <li><a href="${pageContext.request.contextPath}/blog/about" class="selected">关于我</a>
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
    	<h1>关于我</h1>
        <p>屌炸天。。。</p>
    </div>
    
    <div id="templatemo_twitter">
    	这个人很不错！！！
    </div> <!-- END of twitter -->
    
    <div id="templatemo_main">
 		
        <span style="float: left;background-color: #99ccff;margin: 50px;width: 200px;height: 200px;line-height:200px; text-align: center;vertical-align: middle;color: white;font-weight:bold;font-size:30px;" class="radiusbtn">独白</span>
        <span style="float: left;background-color: #99ccff;margin: 50px;width: 200px;height: 200px;line-height:200px; text-align: center;vertical-align: middle;color: white;font-weight:bold;font-size:30px;" class="radiusbtn">经历</span>
        <span style="float: left;background-color: #99ccff;margin: 50px;width: 200px;height: 200px;line-height:200px; text-align: center;vertical-align: middle;color: white;font-weight:bold;font-size:30px;" class="radiusbtn">简历</span>
        
        <div class="clear"></div>
        
    </div> <!-- END of main -->
</div> <!-- END of wrapper -->

<div id="templatemo_bottom_wrapper">
	<div id="templatemo_bottom">
    	
        <div class="col">
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