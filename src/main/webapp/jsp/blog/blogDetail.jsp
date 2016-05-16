<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Runner, Blog Page, Full Post</title>
<meta name="keywords" content="runner, blog page, full post, free template, CSS, HTML" />
<meta name="description" content="Runner, Full Blog Post, Multiple comments, free blog theme by templatemo.com" />
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

function sendComment(id){
	var name = $("#name").val();
	var email = $("#email").val();
	var content = $("#comment").val();
	
	$.ajax({
	    url: "${pageContext.request.contextPath}/blog/sendComment",
	    type: "POST",
	    dataType: "text/html",
	    data: {
	    	blogId : id,
	    	userName : name,
	    	userEmail : email,
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

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="${pageContext.request.contextPath}/js/slimbox2.js"></script> 

</head>
<body id="subpage">

<div id="templatemo_wrapper">

	<div id="templatemo_header">
        <div id="templatemo_menu" class="ddsmoothmenu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/blog/blogHome">主页</a></li>
                <li><a href="${pageContext.request.contextPath}/blog/blog?pageNo=1&pageSize=3" class="selected">日志</a></li>
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
    
    <div id="templatemo_page_intro">
    	<h1>我的日志</h1>
        <p>记录我的感悟，学习笔记，旅行日志，书评，以及各种琐事。。。</p>
    </div>
    
    
    <div id="templatemo_main">
    	<div id="templatemo_content" class="left">
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
                <p align="justify">${blog.description}</p>
                <p align="justify">${blog.content}</p>
          </div>
            <h3>评论</h3>
            <ol class="comment_list">
            
            <c:forEach items="${commentlist }" var="comment" varStatus="row">
            <li>
                <div class="comment_box">
                    <img src="${pageContext.request.contextPath}/images/avator.jpg" alt="" class="img_fl img_border" />
                    <div class="comment_content">
                        <div class="comment_meta"><strong><a href="#">${comment.userName}</a></strong><br />
                        Posted on <fmt:formatDate value="${comment.addTime}" pattern="yyyy-MM-dd"/></div>
                        <p>${comment.content }</p>
                    </div>
                    <div class="clear"></div>
                </div>
            </li>
            <c:if test="${comment.replyState eq 1}">
            <li>
                <ul>
                    <li class="depth_2">
                        <div class="comment_box">
                            <img src="${pageContext.request.contextPath}/images/avator.jpg" alt="" class="img_fl img_border" />
                            <div class="comment_content">
                            <div class="comment_meta"><strong><a href="#">葛宏斌</a></strong><br />
                        	Posted on <fmt:formatDate value="${comment.replyTime}" pattern="yyyy-MM-dd"/></div>
                            <p>${comment.replyContent}</p>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </li>
                </ul>
            </li>
            </c:if>
            </c:forEach>
        </ol>
        
        <div class="clear"></div>
            
            <div class="templatemo_paging">
                <ul>
                    <c:if test="${pageNo ne 1}">
                   	    <li><a href="${pageContext.request.contextPath}/blog/blogDetail?id=${blog.id}&pageNo=${pageNo - 1}&pageSize=3" target="_parent">Previous</a></li>
                    </c:if>
                    <c:forEach items="${pageNoList }" var="item" varStatus="row">
                    <li ><a style="<c:if test='${row.index + 1 eq pageNo}'>color: white;</c:if>" href="${pageContext.request.contextPath}/blog/blogDetail?id=${blog.id}&pageNo=${row.index + 1}&pageSize=3" target="_parent" >${row.index + 1}</a></li>
					</c:forEach>
                    <c:if test="${pageNo * pageSize lt blogcount}">
                        <li><a  href="${pageContext.request.contextPath}/blog/blogDetail?id=${blog.id}&pageNo=${pageNo + 1}&pageSize=3" target="_parent">Next</a></li>
                    </c:if>
                </ul>
                <div class="clear"></div>
            </div>
            
            <div id="comment_form">
            <h3>留下你的足迹</h3>
            
            <form action="#" method="post">
                <div class="form_row">
                    <label>昵称</label><br />
                    <input name="fullname" type="text" maxlength="30" id="name" />
                </div>
                <div class="form_row">
                    <label>Email</label>
                  <br />
                    <input name="email" type="text" id="email" maxlength="30" />
                </div>
                <div class="form_row">
                    <label>评论内容</label><br />
                    <textarea  id="comment" name="comment" rows="" cols=""></textarea>
                </div>

                <input  type="button" name="Submit" value="评论" onclick="return sendComment(${blog.id});" class="submit_btn" />
            </form>
            
        
        </div>
            
            
        </div> <!-- END of content -->
                
		<div id="templatemo_sidebar" class="right">

			<div class="sidebar_section sidebar_section_bg">
                <h3>分类</h3>
                <ul class="sidebar_link_list">
                	<c:forEach items="${categoriesList }" var="categories" varStatus="row">
                    	<li><a href="${pageContext.request.contextPath}/blog/blog?type=${categories.name }&pageNo=1&pageSize=3">${categories.name }</a></li>
                    </c:forEach>
                </ul>
			</div>
            
            <div class="sidebar_section sidebar_section_bg">
                <h3>留言</h3>
                <ul id="msg" class="sidebar_link_list comment">
                </ul>
            </div>
            
            <div class="sidebar_section sidebar_section_bg">
                <h3>友情链接</h3>
                <ul class="sidebar_link_list">
                    <li><a href="http://ptghb.blog.51cto.com/">老葛的技术博客</a></li>
                    <li><a href="https://www.yinxiang.com/">印象笔记</a></li>
                    <li><a href="https://www.baidu.com/">百度搜索</a></li>
                </ul>
			</div>
            
      </div>
        
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

$.ajax({
    url: "${pageContext.request.contextPath}/blog/getMsg",
    type: "GET",
    dataType: "json",
    data: "",
    async: false,
    success: function(data) {
    	for(var i=0;i<data.length;i++){
    		$("#msg").append("<li><span>"+data[i].content+"</span><span class='comment_meta'><strong>"+data[i].title+"</strong> from <a href='#'>"+data[i].name+"</a></span></li>"); 
    	}
    },
    error: function(msg) {
    	alert("错误提示",msg);
    }
});

</script>
</html>