<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Basic_tables</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <link href="${pageContext.request.contextPath}/templatemo_style.css" rel="stylesheet" type="text/css" />
 <!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/font-awesome.css" rel="stylesheet"/> 
<!-- Nav CSS -->
<link href="${pageContext.request.contextPath}/css/custom.css" rel="stylesheet"/>
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!----webfonts--->
<link href='http://fonts.useso.com/css?family=Roboto:400,100,300,500,700,900' rel='stylesheet' type='text/css'/>
<!---//webfonts--->  
<!-- Bootstrap Core JavaScript -->

<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
function delPhoto(id){
	
	 $.ajax({
	        url: "${pageContext.request.contextPath}/admin/delPhoto",
	        type: "POST",
	        dataType : 'text', 
	        data : {
	        	id:id
	        	},
	        async: false,
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

function publishPhoto(id){
	
	 $.ajax({
	        url: "${pageContext.request.contextPath}/admin/updPhoto",
	        type: "POST",
	        dataType : 'text', 
	        data : {
	        	id:id,
	        	title:$("#title").val(),
	        	description:$("#description").val()
	        	},
	        async: false,
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
<div id="wrapper">
         <div class="col-md-12 graphs">
	   <div class="xs">
	 	<div class="bs-example4" data-example-id="contextual-table">
    <table class="table">
      <thead>
        <tr>
          <th>图片</th>
          <th>标题</th>
          <th>描述</th>
          <th>组</th>
          <th>插入时间</th>
          <th>修改时间</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      	<c:forEach items="${photoList }" var="photo" varStatus="row">

        <tr class="<c:if test='${row.index % 2 eq 0}'>active</c:if><c:if test='${row.index % 2 eq 1}'>success</c:if>">
          <th scope="row"><img src="${pageContext.request.contextPath}${photo.imgPath }" alt="image" style="width: 200px;"/></th>
          <td><input id="title" type="text" value="${photo.title }"/></td>
          <td><input id="description" type="text" value="${photo.description }"/></td>
          <td>${photo.groupName }</td>
          <td><fmt:formatDate value="${photo.addTime}" pattern="yyyy-MM-dd"/></td>
          <td><fmt:formatDate value="${photo.uptTime}" pattern="yyyy-MM-dd"/></td>
          <td><input type="button" value="修改" onclick="return publishPhoto(${photo.id });"/><input type="button" value="删除" onclick="return delPhoto(${photo.id });"/></td>
        </tr>
              	
      	</c:forEach>
      </tbody>
    </table>
    
    <div class="templatemo_paging">
          <ul class="pagination">
           <li class="<c:if test='${page.pageNo eq 1}'>disabled</c:if>"><a href="<c:if test='${page.pageNo ne 1}'>${pageContext.request.contextPath}/admin/articleList?pageNo=${page.pageNo - 1}&pageSize=${page.pageSize}</c:if>" target="iframepage">Previous</a></li>
           <c:forEach items="${page.pageNoList }" var="item" varStatus="row">
           <li ><a style="<c:if test='${row.index + 1 eq page.pageNo}'>color: white;</c:if>" href="${pageContext.request.contextPath}/admin/articleList?pageNo=${row.index + 1}&pageSize=${page.pageSize}" target="iframepage" >${row.index + 1}</a></li>
		   </c:forEach>
           <li class="<c:if test='${page.pageNo * page.pageSize >= page.count}'>disabled</c:if>"><a  href="<c:if test='${page.pageNo * page.pageSize lt page.count}'>${pageContext.request.contextPath}/admin/articleList?pageNo=${page.pageNo + 1}&pageSize=${page.pageSize}</c:if>" target="iframepage">Next</a></li>
       </ul>
    </div>
    
   </div>

  </div>
  <div class="copy_layout">
      <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
  </div>
   </div>
   </div>
    <!-- /#wrapper -->
<!-- Metis Menu Plugin JavaScript -->
<script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>
<script src="${pageContext.request.contextPath}/js/custom1.js"></script>
</body>
</html>
