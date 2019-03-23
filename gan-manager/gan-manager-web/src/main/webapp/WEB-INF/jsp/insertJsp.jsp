<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form id="userform" name="use">
    姓名：<input type="text" name="username">
    爱好: <input type="text" name="hobby">
    <button id="sub">提交</button>
</form>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
<script>
    $(function () {
        $("#sub").click(function () {
            $.ajax({
                type:'POST',
                url: '/user/insertUserReturnId',
                data:$("#userform").serialize(),
                success:function (data) {
                    alert(data.username);
                }
            });
        }) ;
    });
</script>
</html>