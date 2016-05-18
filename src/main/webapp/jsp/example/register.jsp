<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Register</title>
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
<body id="login">
  <div class="login-logo">
    <a href="index.html"><img src="${pageContext.request.contextPath}/images/logo.png" alt=""/></a>
  </div>
  <h2 class="form-heading">Register</h2>
  <form class="form-signin app-cam" action="index.html">
      <p>Enter your personal details below</p>
      <input type="text" class="form-control1" placeholder="Full Name" autofocus=""/>
      <input type="text" class="form-control1" placeholder="Address" autofocus=""/>
      <input type="text" class="form-control1" placeholder="Email" autofocus=""/>
      <input type="text" class="form-control1" placeholder="City/Town" autofocus=""/>
      <div class="radios">
        <label for="radio-01" class="label_radio">
            <input type="radio" checked="checked"/> Male
        </label>
        <label for="radio-02" class="label_radio">
            <input type="radio"/> Female
        </label>
	  </div>
	  <p> Enter your account details below</p>
      <input type="text" class="form-control1" placeholder="User Name" autofocus=""/>
      <input type="password" class="form-control1" placeholder="Password"/>
      <input type="password" class="form-control1" placeholder="Re-type Password"/>
      <label class="checkbox-custom check-success">
          <input type="checkbox" value="agree this condition" id="checkbox1"/> <label for="checkbox1">I agree to the Terms of Service and Privacy Policy</label>
      </label>
      <button class="btn btn-lg btn-success1 btn-block" type="submit">Submit</button>
      <div class="registration">
          Already Registered.
          <a class="" href="login.html">
              Login
          </a>
      </div>
  </form>
   <div class="copy_layout login register">
      <p>Copyright &copy; 2015.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
   </div>
</body>
</html>
