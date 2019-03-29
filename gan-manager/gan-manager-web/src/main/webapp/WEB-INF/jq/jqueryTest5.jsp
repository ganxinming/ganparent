<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
//  <input type="button" value="选取每个class为one的div父元素下的第2个子元素." id="btn1"/>
        $("#btn1").click(function(){
            // 子元素选择使用前提，表达式前面必须是元素。例如：$("div:nth-child(2)")
            // 	如果元素上添加条件，必须使用空格。例如：$("div[class='one'] :nth-child(2)")
//			$("div[class='one'] :nth-child(2)").css("background-color","#ff0");
            $("div.one :nth-child(2)").css("background-color","#ff0");

            /* 对比：
             * $("div.one")	所有的div，自己的样式为one
             * $("div .one")  所有的div中后代元素，样式为one
             */
        });
//  <input type="button" value="选取每个class为one的div父元素下的第一个子元素." id="btn2"/>
        $("#btn2").click(function(){
            $("div.one :first-child").css("background-color","#ff0");
        });
//  <input type="button" value="选取每个class为one的div父元素下的最后一个子元素." id="btn3"/>
        $("#btn3").click(function(){
            $("div.one :last-child").css("background-color","#ff0");
        });
//  <input type="button" value="如果class为one的div父元素下的仅仅只有一个子元素，那么选中这个子元素." id="btn4"/>
        $("#btn4").click(function(){
            $("div.one :only-child").css("background-color","#ff0");
        });
    });

</script>
<body>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>

<h3>子元素过滤选择器.</h3>
<input type="button" value="选取每个class为one的div父元素下的第2个子元素." id="btn1"/>
<input type="button" value="选取每个class为one的div父元素下的第一个子元素." id="btn2"/>
<input type="button" value="选取每个class为one的div父元素下的最后一个子元素." id="btn3"/>
<input type="button" value="如果class为one的div父元素下的仅仅只有一个子元素，那么选中这个子元素." id="btn4"/>




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
</html>
