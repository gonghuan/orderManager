<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="edu.seu.cs.model.User" errorPage="error.jsp"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
</head>
<body>
	<%User user = (User)session.getAttribute("user"); %>
	<!-- <form action="getUserByName" method="post">
		<input type="text" name="userName">
		<button type="submit">查询</button>
	</form> -->
	
	${user.getShortName()}
	
	<!-- <form action="getBankName" method="post">
		<input type="text" name="bankCode">
		<button type="submit">查询</button>
	</form> -->
</body>
</html>