<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(document).read(function () {
        /**
         * 其实有个特点，像这样的children，筛选出的一批元素，所以里面还可以用
         * 属性筛选器进行筛选.
         */
        $("#b1").click(function () {
           $("#two").children().css("background-color","#49ff6a");
        });
        $("#b2").click(function () {
            $("#two").children("[title='other']").css("background-color","#49ff6a");
        });
        $("#b3").click(function () {
            $("#two").next().css("background-color","#49ff6a");
        });
        $("#b4").click(function () {
            $("#two").nextAll().css("background-color","#49ff6a");
        });
        $("#b5").click(function () {
            $("#two").prev().css("background-color","#49ff6a");
        });
        $("#b6").click(function () {
            $("#two").prevAll().css("background-color","#49ff6a");
        });
        $("#b7").click(function () {
            $("#two").siblings().css("background-color","#49ff6a");
        });
        $("#b8").click(function () {
            $("#two").parent().css("background-color","#49ff6a");
        });
        $("#b9").click(function () {
            $("[title='tesst']").closest("body").css("background-color","#49ff6a");
        });
    });
</script>
<body>
<body>
<h3>可见性过滤选择器.</h3>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>
<br/><br/>
<input type="button" value=" 选择 id=two 所有子元素"  id="b1"/>
<input type="button" value=" 选择 id=two 子元素title=other 元素 "  id="b2"/>
<input type="button" value=" 选择 id=two 下一个兄弟"  id="b3"/>
<input type="button" value=" 选择 id=two 后面的所有兄弟"  id="b4"/>
<input type="button" value=" 选择 id=two 上一个兄弟"  id="b5"/>
<input type="button" value=" 选择 id=two 前面的所有兄弟"  id="b6"/>
<input type="button" value=" 选择 id=two 所有兄弟"  id="b7"/>
<input type="button" value=" 选择 id=two 父元素"  id="b8"/>
<input type="button" value=" 选择title='tesst' 父元素是body元素"  id="b9"/>
<br /><br />

<!--文本隐藏域-->
<input type="hidden" value="hidden_1">
<input type="hidden" value="hidden_2">
<input type="hidden" value="hidden_3">
<input type="hidden" value="hidden_4">

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
    <div class="mini"  title="tesst">class为mini,title为tesst</div>
</div>


<div style="display:none;"  class="none">style的display为"none"的div</div>

<div class="hide">class为"hide"的div</div>

<span id="mover">正在执行动画的span元素.</span>
</body>
</html>