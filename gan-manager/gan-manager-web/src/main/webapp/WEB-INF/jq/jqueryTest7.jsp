<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
//  <button id="btn1">对表单内 可用input 赋值操作.</button>
        $("#btn1").click(function(){
            $("input:enabled").val("aaaaaaaaaaa");
        });
//  <button id="btn2">对表单内 input不可赋值进行操作.</button>
        $("#btn2").click(function(){
            $("input:disabled").val("bbbbbbbbb");
        });
//  <button id="btn3">获取多选框选中的个数.</button>
        $("#btn3").click(function(){
//			var s1 = $("[name='newsletter']:checked").length;
            var s1 = $("[name='newsletter']:checked").size();
            alert(s1);
        });
//  <button id="btn4">获取下拉框选中的内容.</button>
        $("#btn4").click(function(){
            // 获得选中标签<option value="">text</option>
            $(":selected").each(function(){
                // val() 获得option时，如果没有value值，将获得text的值
                // html() 获得标签体的内容
                $("#selectDivId").append(  $(this).html()  );
            });
        });
    });

</script>


<body>
<h3> 表单对象属性过滤选择器.</h3>
<button type="reset">重置所有表单元素</button>
<input type="checkbox" id="isreset" checked="checked"/><label for="isreset">点击下列按钮时先自动重置页面</label>
<br /><br />
<button id="btn1">对表单内 可用input 赋值操作.</button>
<button id="btn2">对表单内 不可用input 赋值操作.</button>
<button id="btn3">获取多选框选中的个数.</button>
<button id="btn4">获取下拉框选中的内容.</button>

<br /><br />

可用元素：<input name="add" value="可用文本框"/>  <br/>
不可用元素：<input name="email" disabled="disabled" value="不可用文本框"/><br/>
可用元素： <input name="che" value="可用文本框" /><br/>
不可用元素：<input name="name" disabled="disabled"  value="不可用文本框"/><br/>
<br/>
多选框：<br/>
<input type="checkbox" name="newsletter" checked="checked" value="test1" />test1
<input type="checkbox" name="newsletter" value="test2" />test2
<input type="checkbox" name="newsletter" value="test3" />test3
<input type="checkbox" name="newsletter" checked="checked" value="test4" />test4
<input type="checkbox" name="newsletter" value="test5" />test5
<div id="checkboxDivId"></div>

<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
下拉列表1：<br/>
<select name="test" multiple="multiple" style="height:100px">
    <option>浙江</option>
    <option selected="selected" value="hunan">湖南</option>
    <option>北京</option>
    <option selected="selected">天津</option>
    <option>广州</option>
    <option>湖北</option>
</select>

<br/><br/>
下拉列表2：<br/>
<select name="test2" >
    <option>浙江</option>
    <option>湖南</option>
    <option selected="selected">北京</option>
    <option>天津</option>
    <option>广州</option>
    <option>湖北</option>
</select>
<br/><br/>

<div id="selectDivId"></div>



</body>
</html>