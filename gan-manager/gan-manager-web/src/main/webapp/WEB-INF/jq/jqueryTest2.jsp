<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<h3>内容过滤选择器.</h3>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label><br /><br />

<input type="button" value="选取含有文本“di”的div元素." id="btn1"/>
<input type="button" value="选取不包含子元素(或者文本元素)的div空元素." id="btn2"/>
<input type="button" value="选取含有class为mini元素 的div元素." id="btn3"/>
<input type="button" value="选取含有子元素(或者文本元素)的div元素." id="btn4"/>


<br /><br />

<!-- 测试的元素 -->
<div class="one" id="one" >
    id为one,class为one的div
    <div class="mini">class为mini</div>
</div>

<div class="one"  id="two" title="test" >
    id为two,class为one,title为test的div.
    <div class="mini"  title="other">class为mini,title为other</div>
    <div class="mini"  title="test">class为mini,title为test</div>
</div>

<div class="one">
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini"></div>
</div>



<div class="one">
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini">class为mini</div>
    <div class="mini"  title="tesst">class为mini,title为tesst</div>
</div>


<div style="display:none;"  class="none">style的display为"none"的div</div>

<div class="hide">class为"hide"的div</div>

<div>
    包含input的type为"hidden"的div<input type="hidden" size="8"/>
</div>


<span id="mover">正在执行动画的span元素.</span>
<hr>


</body>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(function () {
        $("#btn1").click(function () {
            $("div:contains('di')").css("background-color","#456");
        });
        $("#btn2").click(function () {
           $("div:empty").css("background-color","#444");
        });
        $("#btn3").click(function () {
            $("div:has('.mini')").css("background-color","#444");
        });
        $("#btn4").click(function () {
            $("div:parent").css("background-color","#666");
        });
    });

</script>
</html>