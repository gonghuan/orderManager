<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误页面</title>
</head>
<body>
	<h1>sorry, 发生未知错误，请联系维护人员：贡先生</h1>
	<h1>联系方式：<font color="red">15261898098</font></h1>
	<h3>错误信息</h3>
	<h4><%=exception.toString() %></h4>
</body>
</html>