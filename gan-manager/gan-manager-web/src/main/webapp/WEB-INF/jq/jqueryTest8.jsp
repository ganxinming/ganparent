<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    *{ margin:0; padding:0;}
    body {font-size:12px;text-align:center;}
    a { color:#04D; text-decoration:none;}
    a:hover { color:#F50; text-decoration:underline;}
    .SubCategoryBox {width:600px; margin:0 auto; text-align:center;margin-top:40px;}
    .SubCategoryBox ul { list-style:none;}
    .SubCategoryBox ul li { display:block; float:left; width:200px; line-height:20px;}
    .showmore { clear:both; text-align:center;padding-top:10px;}
    .showmore a { display:block; width:120px; margin:0 auto; line-height:24px; border:1px solid #AAA;}
    .showmore a span { padding-left:15px; background:url(img/down.gif) no-repeat 0 0;}
    .promoted a { color:#F50;}
</style>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        // 从第5个开始，不要最后一个，控制显示或隐藏

        //1 隐藏
        var $allLi = $("li:gt(4):not(:last)");
        $allLi.hide();

        //2 点击显示
        $("span").click(function(){
//			$allLi.show();
//			$allLi.toggle();

            //判断是否隐藏
            if( $allLi.is(":hidden") ){
                $allLi.show(1000);
                $(this).html("隐藏部分品牌");
            } else {
                $allLi.hide(1000);
                $(this).html("显示全部品牌");
            }

        });

    });
</script>
</head>
<body>
<div class="SubCategoryBox">
    <ul>
        <li ><a href="#">佳能</a><i>(30440) </i></li>
        <li ><a href="#">索尼</a><i>(27220) </i></li>
        <li ><a href="#">三星</a><i>(20808) </i></li>
        <li ><a href="#">尼康</a><i>(17821) </i></li>
        <li ><a href="#">松下</a><i>(12289) </i></li>
        <li ><a href="#">卡西欧</a><i>(8242) </i></li>
        <li ><a href="#">富士</a><i>(14894) </i></li>
        <li ><a href="#">柯达</a><i>(9520) </i></li>
        <li ><a href="#">宾得</a><i>(2195) </i></li>
        <li ><a href="#">理光</a><i>(4114) </i></li>
        <li ><a href="#">奥林巴斯</a><i>(12205) </i></li>
        <li ><a href="#">明基</a><i>(1466) </i></li>
        <li ><a href="#">爱国者</a><i>(3091) </i></li>
        <li ><a href="#">其它品牌相机</a><i>(7275) </i></li>
    </ul>
    <div class="showmore">
        <a href="#"><span>显示全部品牌</span></a>
    </div>
</div>
</body>
</html>