<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<body>
<h3>表单</h3>
<form action="">
    <table border="1">
        <tr id="tr1">
            <td><label>姓名</label></td>
            <td><input type="text" name="username"  value="jack" /></td>
        </tr>
        <tr>
            <td><span>密码</span></td>
            <td><input type="password" name="password" /></td>
        </tr>
        <tr>
            <td>性别</td>
            <td>
                <input type="radio" name="gender" value="男" />男
                <input type="radio" name="gender" value="女" />女
            </td>
        </tr>
        <tr>
            <td>爱好</td>
            <td>
                <input type="checkbox" name="hobby" value="1"/>抽烟
                <input type="checkbox" name="hobby" value="2"/>喝酒
                <input type="checkbox" name="hobby" value="3"/>烫头
            </td>
        </tr>
        <tr>
            <td>我的照片</td>
            <td><input type="file" name="image" /></td>
        </tr>
        <tr>
            <td>学历</td>
            <td>
                <select name="edu">
                    <option value="1">小班</option>
                    <option value="2">中班</option>
                    <option value="3">大班</option>
                    <option value="4">学前班</option>
                </select>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <button id="buttonId" type="button">普通按钮</button>
                <input type="submit" value="提交按钮" />
                <input type="reset" value="重置按钮" />
                <input type="image" value="图片按钮" src="../image/0050.jpg" style="height: 30px;width: 50px" />
            </td>
        </tr>
    </table>
</form>


<h3>公告信息</h3>
<div>
    未满18慎进
</div>

</body>
<script>
    jQuery(document).ready(function(){
        //1 设置姓名文本框不可用
       //获得该属性的值 var value= $("[name='username']").attr("disabled");
//			$("[name='username']").attr("disabled","disabled");
        $("[name='username']").attr("disabled","");

        // 可用，必须移除
        $("[name='username']").removeAttr("disabled");

        //2 class
        $("#buttonId").click(function(){
            $("[name='username']").toggleClass("textClass");
        });

        //3 text /html
//			alert($("div").text());
//			alert($("div").html());

//			$("div").text("<a href='http://www.itheima.com'>你点我呀</a>");
//			$("div").html("<a href='http://www.itheima.com'>你点我呀</a>");

        //4 css
        $("div").css("border","1px solid #999");
        $("div").css({
            "width":"200px",
            "height":"200px",
            "font-size":"60px",
            "color":"#ff28a0"
        });


    });
</script>
</html>