<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
hello: ${hello }
<form action="${pageContext.request.contextPath}/getItem">
    时间:<input type="text" name="created">
    <input type="submit">
</form>
</body>
</html>