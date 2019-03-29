<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<body>
<h3>可见性过滤选择器.</h3>
<button id="reset">手动重置页面元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>
<br/><br/>
<input type="button" value=" 选取所有可见的div元素"  id="b1"/>
<input type="button" value=" 选取所有不可见的元素, 利用 jQuery 中的 show() 方法将它们显示出来"  id="b2"/>
<input type="button" value=" 选取所有的文本隐藏域, 并打印它们的值"  id="b3"/>
<input type="button" value=" 选取所有的文本隐藏域, 并打印它们的值"  id="b4"/>
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
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    $(function () {
        $("#b1").click(function () {
            $("div:visible").css("background-color","#555");
        });
        $("#b2").click(function () {
            $("div:hidden").show(1000);
        });
        $("#b3").click(function () {
            $("input:hidden").each(function () {
               alert($(this).val());
            });
        });
        $("#b4").click(function(){
            // $.each 全局函数
            // * 回调函数
            // ** 参数1：index 遍历索引
            // ** 参数2：domEle 当前遍历的对象，及==this
            //
            $.each($("input:hidden"),function(index, domEle){
                alert(index + " @ " +  $(domEle).val() );
            });
        });

    });

</script>
</html>