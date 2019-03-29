<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    .textClass {
        background-color: #ff0000;
    }
</style>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script>
    /**
     * 左右选择框转换
     */
    $(function () {
       $("#left1").click(function () {
           $("#leftSelectId option:selected:first").appendTo($("#rightSelectId")).removeAttr("selected");
       });
       $("#left2").click(function () {
            $("#leftSelectId option:selected").appendTo("#rightSelectId").removeAttr("selected");
        });
       $("#left3").click(function () {
          $("#leftSelectId option") .appendTo("#rightSelectId");
       });


        $("#right1").click(function () {
            $("#rightSelectId option:selected:first").appendTo($("#leftSelectId")).removeAttr("selected");
        });
        $("#right2").click(function () {
            $("#rightSelectId option:selected").appendTo("#leftSelectId").removeAttr("selected");
        });
        $("#right3").click(function () {
            $("#rightSelectId option") .appendTo("#leftSelectId");
        });
    });

</script>
<body>
<table>
    <tr>
        <td>
            <select id="leftSelectId" style="width:100px" multiple="multiple" size="6">

                <option >刘刚</option>
                <option>中码</option>
                <option>于松楠</option>
                <option>曾卫</option>
                <option>大脸猫</option>
            </select>

        </td>
        <td>
            <input id="left1" type="button" value=">" style="width:50px"/> <br/>
            <input id="left2" type="button" value=">>" style="width:50px"/> <br/>
            <input id="left3" type="button" value=">>>" style="width:50px"/> <br/>

            <input id="right1" type="button" value="<" style="width:50px"/> <br/>
            <input id="right2" type="button" value="<<" style="width:50px"/> <br/>
            <input id="right3" type="button" value="<<<" style="width:50px"/> <br/>

        </td>
        <td>
            <select id="rightSelectId"  style="width:100px" multiple="multiple" size="6">
            </select>

        </td>
    </tr>
</table>

</body>
</html>