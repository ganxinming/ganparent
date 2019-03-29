<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<script type="text/javascript" src="../js/jquery-1.8.3.js"></script>
<script type="text/javascript">
    /**
     * 总结，像这种添加事件的方法，后面都需要添加方法的类型和名字，
     * 在解绑的时候，正好可以利用名字解绑
     * 从本质上来说，bind和live都是绑定事件，对应的解绑是unbind，和die事件
     */
    $(document).ready(function(){
       $("#h01").one("click",function () {
           alert("只能点击一次");
       });
       //两个click，按顺序触发 ，click.a，取个别名
       $("#h02").bind("click.a",function () {
           alert("可以点击多次a");
       });
        $("#h02").bind("click.b",function () {
            alert("可以点击多次b");
        });
        //用空格隔开，可以解绑多个事件
        $("#h03").click(function () {
           $("#h02").unbind("click.b click.a");
        });

        $(".myClass").live("click",function(){
            $("body").append("<input type='button' class='myClass' />");
        });
//	<input id="h05" type="button" value="5 解绑4"/>
        $("#h05").click(function(){
            $(".myClass").die("click");
        });

    });
</script>
<body>
<input id="h01" type="button" value="1只能点击一次，之后失效" />
<input id="h02" type="button" value="2可以点击多次" />
<input id="h03" type="button" value="3解绑2" />
<input type="button" value="4 添加一个按钮，样式为myClass，且拥有相同的事件" class="myClass" />
<input id="h05" type="button" value="5 解绑4"/>
</body>
</html>