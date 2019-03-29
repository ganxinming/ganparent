<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
 值：<input type="text" id="username" value="123">
 <!--placehoder 这个属性和value还是不同，他只是默认显示，但是没有这个值-->
 键: <input type="text" id="key" placeholder="456" >
<button id="submitKeyAndValue">提交</button>
<br>
<button id="but1">三个基本选择器:#id</button>
<button class="cc">三个基本选择器:.class</button>
<a>三个基本选择器:元素a</a>
<hr>
 <h3>层次选择器.</h3>
 <button id="reset">手动重置页面元素</button>
 <input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label><br /><br />

 <input type="button" value="选择 body内的所有div元素." id="btn1"/>
 <input type="button" value="在body内,选择子元素是div的。" id="btn2"/>
 <input type="button" value="选择 id为one 的下一个div元素." id="btn3"/>
 <input type="button" value="选择 id为two的元素后面的所有div兄弟元素." id="btn4"/>
 <input type="button" value="选择 id为two的元素的所有div兄弟元素." id="btn5"/>
 <br />
 <br />

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
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.form.js"></script>
<script>
    /**
     * jQuery对象和js对象转换
     * val()和value值的区别
     * placeholder和value的区别
     * @type {HTMLElement | null}
     */
    $(function () {
        $("#submitKeyAndValue").click(function () {
            //1 使用javascript获得value值
            var username = document.getElementById("username");
            //alert(username.value);
            //2 将 dom对象 转换 jQuery对象
            // * 语法：$(dom对象)
            // * 建议：jQuery对象变量名，建议为$开头
            var $username = $(username);
            //		alert($username.val());
            alert($username.val());
            //3 将 jQuery对象 转换 dom对象
            //3.1 jQuery对象内部使用【数组】存放所有的数据，可以数组的下标获取（索引）
            var username1=$username[0];
            alert(username1.value);
            //3.2 jQuery提供函数 get() 转换成dom对象
            var username2=$username.get(0);
            alert(username2.value);
            //val()是jq的方法，value是js获得属性.
            alert($("#key").val());
        });
     //三个基本选择器
     $("#but1").click(function () {
        alert("id选择器");
     });
     $(".cc").click(function () {
        this.css("font-color","#ff0");
     });
     $("a").click(function () {
        alert("a元素选择器")
     });
//层次选择器
        <!--选择body下的所有div元素，包括子和孙元素-->
      $("#btn1").click(function () {
          $("body div").css("background-color","#ff0");
      });
        <!--选择body下的所有div子元素，只有子元素，不包括孙子元素-->
      $("#btn2").click(function () {
         $("body>div").css("background-color","#000");
      });
        <!--选择id为one的下一个兄弟div元素(不涉及子元素)-->
      $("#btn3").click(function () {
            $("#one+div").css("background-color","#123");
        });
        <!--选择id为one的下面所有兄弟div元素(不涉及子元素)-->
      $("#btn4").click(function () {
            $("#one~div").css("background-color","#189");
        });
        <!--选择id为two的所有兄弟div元素(包括上面)-->
        $("#btn5").click(function () {
            $("#two").siblings("div").css("background-color","#589");
        });

    });

</script>
</html>