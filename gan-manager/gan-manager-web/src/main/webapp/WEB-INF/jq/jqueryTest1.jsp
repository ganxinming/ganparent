<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="../css/style.css" />
<body>
<h3>基本过滤选择器.</h3>
 <button id="reset">手动重置页面元素</button>
 <input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label><br /><br />
 <input type="button" value="选择第一个div元素." id="btn1"/>
 <input type="button" value="选择最后一个div元素." id="btn2"/>
 <input type="button" value="选择class不为one的 所有div元素." id="btn3"/>
 <input type="button" value="选择索引值为偶数 的div元素." id="btn4"/>
 <input type="button" value="选择索引值为奇数 的div元素." id="btn5"/>
 <input type="button" value="选择索引值等于3的元素." id="btn6"/>
 <input type="button" value="选择索引值大于3的元素." id="btn7"/>
 <input type="button" value="选择索引值小于3的元素." id="btn8"/>
 <input type="button" value="选择所有的标题元素." id="btn9"/>
 <input type="button" value="选择当前正在执行动画的所有元素." id="btn10"/>
 <input type="text" value="请输入账号" defaultValue="请输入账号" style="color:#999" />
 <input type="text" value="请输入密码" defaultValue="请输入密码" style="color:#999"/>

 <br /><br />
    <!--
    里面有好多功能都没有用，可是他们得html版本有用
       可是jsp不支持吧，Jquery但是写法就是这样写的
       1.过滤器
       2.选择框，失焦和聚焦时的变化。
    -->
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

</body>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>

    $(function () {
        $("#btn1").click(function () {
            $("div:first").css("background-color","#344");
        });
        $("#btn2").click(function () {
            $("div:last").css("background-color","#344");
        });
        $("#btn3").click(function () {
            $("div:not('.one')").css("background-color","#344");
        });
        $("#btn4").click(function () {
            $("div:even").css("background-color","#344");
        });
        $("#btn5").click(function () {
            $("div:odd").css("background-color","#344");
        });
        $("#btn6").click(function () {
            $("div:eq(3)").css("background-color","#344");
        });
        $("#btn7").click(function () {
            $("div:gt(3)").css("background-color","#344");
        });
        $("#btn8").click(function () {
            $("div:lt(3)").css("background-color","#344");
        });
        $("#btn9").click(function () {
            $("div:header").css("background-color","#344");
        });
        $("#btn9").click(function () {
            $("div:header").css("background-color","#344");
        });
        $("#btn10").click(function () {
            $("div:animated").css("background-color","#344");
        });

        $("input[type='text']").on("blur focus",function(){
            //1 获得默认值
            var dv = $(this).attr("defaultValue");

            //2 判断是否获得焦点
            if( $(this).is(":focus") ){
                //2.1 获得焦点，如果是默认值 ，清空value值 ，this 当前执行对象，是dom对象
                if( $(this).val() == dv){
                    $(this).val("");
                    $(this).css("color","#000");
                }
            } else {
                //2.2 失去焦点，如果内容为空，设置默认值  , 或  $(this).val().length == 0
                if( $(this).val() == "" ){
                    $(this).val(dv);
                    $(this).css("color","#999");
                }
            }


        });
    });

</script>
</html>