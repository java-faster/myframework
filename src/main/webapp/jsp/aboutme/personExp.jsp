<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>老葛的经历</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/history.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.mousewheel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.easing.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/history.js"></script>

</head>
<body>

<div id="arrow">
	<ul>
		<li class="arrowup"></li>
		<li class="arrowdown"></li>
	</ul>
</div>

<div id="history">

	<div class="title">
		<h2>葛宏斌成长史</h2>
		<div id="circle">
			<div class="cmsk"></div>
			<div class="circlecontent">
				<div thisyear="2013" class="timeblock">
					<span class="numf"></span>
					<span class="nums"></span>
					<span class="numt"></span>
					<span class="numfo"></span>
					<div class="clear"></div>
				</div>
				<div class="timeyear">YEAR</div>
			</div>
			<a href="#" class="clock"></a>
		</div>
	</div>
	
	<div id="content">
		<ul class="list" >
			<c:forEach items="${explist }" var="exp" varStatus="row">
			<li>
				<div class="liwrap">
					<div class="lileft">
						<div class="date">
							<span class="year">${exp.year }</span>
							<span class="md">${exp.mmdd }</span>
						</div>
					</div>
					
					<div class="point"><b></b></div>
					
					<div class="liright">
						<div class="histt"><a href="#">${exp.title }</a></div>
						<div class="hisct">${exp.content }</div>
					</div>
				</div>
			</li>
			</c:forEach>
		</ul>
	</div>
</div>
</body>
</html>