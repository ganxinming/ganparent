<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

</head>
<body>
简单参数封装
<form action="${pageContext.request.contextPath}/user/getPar" >
    id:<input type="text" name="id">
    username:<input type="text" name="username">
    hobby: 篮球<input type="checkbox" name="hobby" value="篮球">
    足球<input type="checkbox" name="hobby" value="足球">
    乒乓球<input type="checkbox" name="hobby" value="乒乓球">
    <input type="submit">
</form>
<br>
对象封装
<form action="${pageContext.request.contextPath}/user/getUser">
    id:<input type="text" name="id">
    username:<input type="text" name="username">
    hobby: 篮球<input type="checkbox" name="hobby" value="篮球">
    足球<input type="checkbox" name="hobby" value="足球">
    乒乓球<input type="checkbox" name="hobby" value="乒乓球">
    <input type="submit">
</form>
<br>
回显：
得到的ID值:${userObject.id}
得到的名字值:${userObject.username}
爱好 :
<c:forEach items="${userObject.hobby}" var="hobby">
    <td>${hobby}</td>
</c:forEach>
<br>
对象中的单个对象封装
<form action="${pageContext.request.contextPath}/user/getUserCustom/user">
    id:<input type="text" name="user.id">
    username:<input type="text" name="user.username">
    hobby: 篮球<input type="checkbox" name="user.hobby" value="篮球">
    足球<input type="checkbox" name="user.hobby" value="足球">
    乒乓球<input type="checkbox" name="user.hobby" value="乒乓球">
    <input type="submit">
</form>
<br>
list对象封装
<form action="${pageContext.request.contextPath}/user/getUserCustom/list">
    id:<input type="text" name="userList[0].id">
    username:<input type="text" name="userList[0].username">
    <br>
    id:<input type="text" name="userList[1].id">
    username:<input type="text" name="userList[1].username">
    <input type="submit">
</form>
<br>
list回显
<c:forEach items="${list}" var="use">
<tr>
    <td>${use.id}</td>
    <td>${use.username}</td>
</tr>

</c:forEach>
<br>
map对象封装
<form action="/user/getUserCustom/maps">
    id:<input type="text" name="maps['idd']">
    username:<input type="text" name="maps['usernames']">
    <input type="submit">
</form>
<h1>RESTFUL风格设计</h1>
<a href="/user/restful"></a>
</body>
</html>