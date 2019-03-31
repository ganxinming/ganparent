<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
<style>
    img{
    height: 100px;
        width: 100px;
    }

</style>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="application/javascript">
 $(function () {
    $("#download").click(function () {
       $.ajax({
           type:'POST',
           url: "/file/download",
           data:{"image":"-6b52cd6955cced6a1554029652845.jpg"},
           success :function (data) {

           }
       });

    });
 });

</script>
<h3>文件上传UUID形式存储</h3>
<form action="${pageContext.request.contextPath}/file/fileUpload.do" method="post" enctype="multipart/form-data">
    <label>文件上传</label>
    <input type="file" name="file">
    <img src="${pageContext.request.contextPath}/img/${newFilePath}" alt="上传的图片">
    <input type="submit">
</form>
<br>
<h3>文件上传目录打散</h3>
<form action="${pageContext.request.contextPath}/file/fileUpload1.do" method="post" enctype="multipart/form-data">
    <label>文件上传</label>
    <input type="file" name="file">
    <input type="submit">
    <img src="${pageContext.request.contextPath}/${newFileUrl}" alt="上传的图片" >
</form>
<br>
<h3>多文件上传</h3>
<form action="${pageContext.request.contextPath}/file/fileUpload2.do" method="post" enctype="multipart/form-data">
    <label>多文件上传</label>
    <input type="file" name="file">
    <img src="${pageContext.request.contextPath}/${fileNames[0]}" alt="上传的图片" >
    <input type="file" name="file">
    <img src="${pageContext.request.contextPath}/${fileNames[1]}" alt="上传的图片" >
    <input type="file" name="file">
    <img src="${pageContext.request.contextPath}/${fileNames[2]}" alt="上传的图片" >
    <input type="submit">
</form>
<hr>
<br>
<button id="download">下载文件</button>
</body>

</html>