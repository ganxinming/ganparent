<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="./css/style.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
     $(function () {
         /**
          * 基本过滤和过滤差不多
          * 基本过滤：是:eq,作用在里面
          * 过滤：更像是方法，对象.方法().
          */
     //    $("div:eq('3')").css("background-color","#5d42ff");
         $("#b1").click(function () {
             $("div").eq('3').css("background-color","#5d42ff");
         });
         $("#b2").click(function () {
             $("div").first().css("background-color","#5d42ff");
         });
         $("#b3").click(function () {
             $("div").last().css("background-color","#5d42ff");
         });
         $("#b4").click(function () {
             alert($("div#one").hasClass("one"));
         });
         $("#b5").click(function () {
             $("div.none").css("background-color","#5d42ff");
         });
         $("#b6").click(function () {
             $("div.hide").next().is('span').eq('3').css("background-color","#5d42ff");
         });
         $("#b7").click(function () {
             $("div").has('div').css("background-color","#5d42ff");
         });
         $("#b8").click(function () {
             $("div.one").children().not('[title]').parent().css("background-color","#5d42ff");
         });
         $("#b9").click(function(){
             //索引从0开始，只要是div就算进来，包括父子等
             //2,5是指选择2,4两个元素
             $("div").slice(3,5).css("background-color","#ff0");
         });

    });
</script>
<body>
<h3>可见性过滤选择器.</h3>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>
<br/><br/>
<input type="button" value=" 选择div索引值等于3的元素"  id="b1"/>
<input type="button" value=" 选择第一个div元素"  id="b2"/>
<input type="button" value=" 选择最后一个div元素"  id="b3"/>
<input type="button" value=" id=one div样式是否是one"  id="b4"/>
<input type="button" value=" 选择class为none的所有div"  id="b5"/>
<input type="button" value=" 样式为hide div 下一个兄弟是否是span"  id="b6"/>
<input type="button" value=" 选择所有div中含有div的子元素"  id="b7"/>
<input type="button" value=" 选择样式为one div 子元素中没有title属性的 父div"  id="b8"/>
<input type="button" value=" 选择索引号为3,4的div"  id="b9"/>
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