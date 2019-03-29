<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<body>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>
<h3> 属性选择器.</h3>
<input type="button" value="选取含有 属性title 的div元素." id="btn1"/>
<input type="button" value="选取 属性title值等于“test”的div元素." id="btn2"/>
<input type="button" value="选取 属性title值不等于“test”的div元素(没有属性title的也将被选中)." id="btn3"/>
<input type="button" value="选取 属性title值 以“te”开始 的div元素." id="btn4"/>
<input type="button" value="选取 属性title值 以“est”结束 的div元素." id="btn5"/>
<input type="button" value="选取 属性title值 含有“es”的div元素." id="btn6"/>
<input type="button" value="组合属性选择器,首先选取有属性id的div元素，然后在结果中 选取属性title值 含有“es”的元素." id="btn7"/>
<br /><br />
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
</body>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(function () {
        //  <input type="button" value="选取含有 属性title 的div元素." id="btn1"/>
        $("#btn1").click(function(){
            // <xxx title="">   <xxx title="yyy">  <xxx title>
            $("div[title]").css("background-color","#ff0");
        });
//  <input type="button" value="选取 属性title值等于“test”的div元素." id="btn2"/>
        $("#btn2").click(function(){
            $("div[title='test']").css("background-color","#ff0");
        });
//  <input type="button" value="选取 属性title值不等于“test”的div元素(没有属性title的也将被选中)." id="btn3"/>
        $("#btn3").click(function(){
            $("div[title!='test']").css("background-color","#ff0");
        });
//  <input type="button" value="选取 属性title值 以“te”开始 的div元素." id="btn4"/>
        $("#btn4").click(function(){
            $("div[title^='te']").css("background-color","#ff0");
        });
//  <input type="button" value="选取 属性title值 以“est”结束 的div元素." id="btn5"/>
        $("#btn5").click(function(){
            $("div[title$='est']").css("background-color","#ff0");
        });
//  <input type="button" value="选取 属性title值 含有“es”的div元素." id="btn6"/>
        $("#btn6").click(function(){
            $("div[title*='es']").css("background-color","#ff0");
        });
//  <input type="button" value="组合属性选择器,首先选取有属性id的div元素，然后在结果中 选取属性title值 含有“es”的元素." id="btn7"/>
        $("#btn7").click(function(){
            $("div[id][title*='es']").css("background-color","#ff0");
        });
    });

</script>
</html>