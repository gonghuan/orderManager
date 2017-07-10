<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>登录</title>
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link href="css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 50px;
        padding-bottom: 40px;
        background:#FFFFFF;
      }
      
      
      .loginImg{
        height:500px;
        width:100%
        overflow:hidden;
        margin:0;
        paading:0;
        background-size:100% auto;
        background-repeat:no-repeat;
      }
      
      .loginDiv{
       height:300px;
      }
      
      .loginForm{
      }
      
    </style>
    <script src="js/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top"></div>
	<div class="container">
			<div id="carouselslide" class="carousel slide" data-ride="carousel">
  			<!-- Indicators -->
  			<ol class="carousel-indicators">
    			<li data-target="#carouselslide" data-slide-to="0" class="active"></li>
    			<li data-target="#carouselslide" data-slide-to="1"></li>
    			<li data-target="#carouselslide" data-slide-to="2"></li>
  			</ol>

		  <!-- Wrapper for slides -->
		  <div class="carousel-inner" role="listbox">
		    <div class="loginImg item active">
		    	<img alt="图片" src="img/a.jpg" width="100%" height="100"/>
		    </div>
		    <div class="loginImg item">
		      <img alt="图片" src="img/a.jpg" width="100%" height="100"/>
		    </div>
		    <div class="loginImg item">
		      <img alt="图片" src="img/a.jpg" width="100%" height="100"/>
		    </div>
		  </div>
		  <!-- Controls -->
		  <a class="left carousel-control" href="#carouselslide" role="button" data-slide="prev">
		    <span class="sr-only">Previous</span>
		  </a>
		  <a class="right carousel-control" href="#carouselslide" role="button" data-slide="next">
		    <span class="sr-only">Next</span>
		  </a>
		</div>
		
		<div class="loginDiv container-fluid">
			<div class="row" style="height:100px;margin:20px;">
				<div class="col-md-2"></div>
				<div class="col-md-8" style="height:100px">
					<!--  h1 style="color:#0064cc"--><!-- 千发配货系统--><!--/h1>--> 
					<img alt="千发配货系统" src="img/title.png">
				</div>
				<div class="col-md-2"></div>
			</div>
			
			<div class="row" style="padding:20px;height:45px;margin-bottom:10px;">
				<form action="login" method="post">
					<div class="col-md-2"></div>
					<div class="col-md-3" style="height:45px;">
						<input type="text"  placeholder="请输入用户名" name="shortName" style="width:100%;height:42px; font-size:18px;text-align:center">
					</div>
			        
			        <div class="col-md-2"></div>
			        <!--input type="password" class="input-block-level" placeholder="Password"-->
			        
			        <div class="col-md-3">
						<button class="btn btn-large btn-primary col-md-2" type="submit" style="width:100%;height:42px; font-size:18px;">登录</button>
					</div>
			        
			    </form>
			</div>
			
		    <c:if test="${error != null}">
				<p style="font-size:16px; color:red; margin-top:30px;margin-left:180px;">请输入正确的用户名</p>
			</c:if>
		</div>
	</div>
	
</body>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#carouselslide').carousel({
	        interval: 10000
	    });
	});
</script>
</html>