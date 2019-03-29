<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    div *{
        display:block;
        width:200px;
    }
    div span{
        background-color : #0f0;
    }
</style>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(document).read(function () {
        $("div").children("a").hide().prev("span").click(function(){
            $(this).nextAll("a").toggle().parent().siblings("div").find("a").hide();
        });
    });

</script>
<body>

<div>
    <span>追求中</span>
    <a>娇娇</a>
    <a>薄纸</a>
    <a>于松楠</a>
</div>
<div>
    <span>已交往</span>
    <a>关系</a>
    <a>瑞瑞</a>
    <a>张琛</a>
</div>
<div>
    <span>已分手</span>
    <a>洋芋</a>
    <a>阳阳</a>
    <a>东东</a>
    <a>纯纯</a>
</div>
</body>
</html>