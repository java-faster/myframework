<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Basic_tables</title>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Modern Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
</head>
<body>
<div id="wrapper">
         <div class="col-md-12 graphs">
	   <div class="xs">
   <div class="panel-body1">
   <table class="table">
     <thead>
        <tr>
          <th></th>
          <th>名称</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
      <c:forEach items="${categoriesList }" var="categories" varStatus="row">
        <tr>
          <th scope="row">${row.index + 1}</th>
          <td>${categories.name }</td>
          <td><input type="button" value="修改"/></td>
        </tr>
      </c:forEach>
      </tbody>
    </table>
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
