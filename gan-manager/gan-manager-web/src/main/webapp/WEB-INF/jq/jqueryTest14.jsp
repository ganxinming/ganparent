<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    #e02{
        border: 1px solid #000000;
        height: 200px;
        width: 200px;
    }
</style>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
       $("#e01").focus(function () {
          $("#textMsg").html("聚焦 focus");
       }).blur(function () {
           $("#textMsg").html("失焦 blur");
       });
        var i = 0;
        $("#e02").mouseover(function(){
            $("#divMsg").html("鼠标移上：mouseover");
        }).mousemove(function(){
            $("#divMsg").html("鼠标移动：mousemove , " + i++ );
        }).mouseout(function(){
            $("#divMsg").html("鼠标移出：mouseout");
        }).mousedown(function(){
            $("#divMsg").html("鼠标按下：mousedown");
        }).mouseup(function(){
            $("#divMsg").html("鼠标弹起：mouseup");
        });
    //foucs和foucsin的区别,foucsin父元素能监视到子元素的焦点

        $("#outerDiv").focusin(function(){
            alert("outer");
        });
        //js  mouseover  当鼠标在父元素和子元素 之间穿越时，【触发】父元素的事件。
//jquery  mouseenter  当鼠标在父元素和子元素 之间穿越时，【不触发】父元素的事件。
        $("#outerDiv").mouseenter(function(){
            $("#showSpan").html(i++);
        });

        // jquery 页面加载 可以使用多次
        $(function(){
            alert("aaaa");
        });
        $(function(){
            alert("bbbb");
        });
        // js  只能执行一个，后面的覆盖前面的
        window.onload = function(){
            alert("1111");
        };
        window.onload = function(){
            alert("2222");
        };
    });
</script>
<body>
<input id="e01" type="text" /><span id="textMsg"></span> <br/>
<hr/>
<div id="e02" ></div><span id="divMsg"></span> <br/>
<hr/>

<input id="e03" type="button" value="可以点击"/><span id="buttonMsg"></span> <br/>

<div id="outerDiv" style="border:1px solid #f00;width:200px;height:200px">
    <div id="innerDiv" style="border:1px solid #00f;width:100px;height:100px"></div>
</div>

</body>
</html>