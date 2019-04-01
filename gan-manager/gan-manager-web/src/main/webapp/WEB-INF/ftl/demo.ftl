<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入门demo</title>
</head>
<style>
    p{
        font-size: large;
        color: #ff0000;
    }

</style>
<body>
<#--
    感悟：
    1.所有?后面其实代表的是内建函数，即原本就有的函数,内建函数语法格式： 变量+?+函数名称
    2.！后面表示如果为null时，应该用什么表示
    3.?? 用来判断是否存在此变量
    4.主要是新增了宏指令和
-->
<h1>普通取值 ${helloFreeMarker}
<#--通过 ${}取值，另外这个是注释  --></h1>
<#--取boolean值需要匹配式-->
<p>取boolean变量：${flag?string("yes","no")}</p>
<br>
<p>assign:此指令用于在页面上定义一个基本类型变量</p>
<#assign demo1="校长">
联系人：${demo1}
<br>
<p>assign:定一个对象类型</p>
<#assign demo2={"name":"赶赶","id":"永远天下第一"} >
对象名字：${demo2.name}
对象id：${demo2.id}
<p>对象转成json对象</p>
<br>
<p > 如果值是空的可以用默认值代替</p>
${nullValue!"这个是默认值"}

<br>
<p>include:指令用于引入其他模板文件(这个失败了，但是一般我们也不怎么用，用到再说</p>
<p>时间类型，需要在后面加匹配</p>
日期:${date1?string('yyyy-MM-dd')}
时间:${date1?string('HH:mm:ss')}
日期和时间${date1?string('yyyy-MM-dd HH:mm:ss')}
<p>#list指令 :list取值(如果想取索引可以通过加_index取得,长度可以通过?size取得)</p>
<#list listString as demo3>
    id为：${demo3_index}，值：${demo3!}
</#list>
共${listString?size}条记录
<p>#list指令 : map取值</p>
<#list mapFreeMarker?keys as key>
        key为:${key},value为:${mapFreeMarker[key]} <br>
</#list>
<p>#if 条件判断指令</p>
<#assign newFlag="yes">
<#if newFlag=="yes">
    这是if语句成功输出的
<#else >
    这是else语句输出的
</#if>
<p>判断变量是否存在,用两个??</p>
<#if nullValue??>
    变量存在
<#else >
    变量不存在
</#if>
<br>
${"我的文件保存在C:\\盘"}
${'我名字是\"annlee\"'}
转义字符如下：<br>
\";双引号(u0022)
\';单引号(u0027)
\\;反斜杠(u005C)
\n;换行(u000A)
\r;回车(u000D)
\t;Tab(u0009)
\b;退格键(u0008)
\f;Form feed(u000C)
\l;<
\g;>
\a;&
\{;{
</body>
</html>