<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>Title</title>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.min.css" rel="stylesheet">
</head>
<body>
<!-- Sidebar -->
<div class="sidebar-fixed position-fixed">

    <p id="icon" style="text-shadow: rgb(179, 179, 179) 0px 0px 0px, rgb(181, 181, 181) 1px 1px 0px, rgb(183, 183, 183) 2px 2px 0px, rgb(185, 185, 185) 3px 3px 0px, rgb(187, 187, 187) 4px 4px 0px, rgb(189, 189, 189) 5px 5px 0px, rgb(192, 192, 192) 6px 6px 0px, rgb(194, 194, 194) 7px 7px 0px, rgb(196, 196, 196) 8px 8px 0px, rgb(198, 198, 198) 9px 9px 0px, rgb(200, 200, 200) 10px 10px 0px, rgb(203, 203, 203) 11px 11px 0px, rgb(205, 205, 205) 12px 12px 0px, rgb(207, 207, 207) 13px 13px 0px, rgb(209, 209, 209) 14px 14px 0px, rgb(211, 211, 211) 15px 15px 0px, rgb(213, 213, 213) 16px 16px 0px, rgb(216, 216, 216) 17px 17px 0px, rgb(218, 218, 218) 18px 18px 0px, rgb(220, 220, 220) 19px 19px 0px, rgb(222, 222, 222) 20px 20px 0px, rgb(224, 224, 224) 21px 21px 0px, rgb(227, 227, 227) 22px 22px 0px, rgb(229, 229, 229) 23px 23px 0px, rgb(231, 231, 231) 24px 24px 0px, rgb(233, 233, 233) 25px 25px 0px, rgb(235, 235, 235) 26px 26px 0px, rgb(238, 238, 238) 27px 27px 0px, rgb(240, 240, 240) 28px 28px 0px, rgb(242, 242, 242) 29px 29px 0px, rgb(244, 244, 244) 30px 30px 0px, rgb(246, 246, 246) 31px 31px 0px, rgb(248, 248, 248) 32px 32px 0px, rgb(251, 251, 251) 33px 33px 0px, rgb(253, 253, 253) 34px 34px 0px; font-size: 22px; color: rgb(8, 8, 8); height: 230px; width: 230px; line-height: 230px; border-radius: 0%; text-align: center; background-color: rgb(255, 255, 255);"> 代码重构 </p>

    <div class="list-group list-group-flush">
        <a href="refactory_structure.jsp" class="list-group-item  waves-effect">
            <i class="fas fa-ship mr-3"></i>格式重构
        </a>
        <a href="refactory_name.jsp" class="list-group-item list-group-item-action waves-effect">
            <i class="fas fa-plane mr-3"></i>命名重构</a>


        <a href="#" id="one" class="list-group-item list-group-item-action waves-effect nav nav-header collapsed" data-toggle="collapse">
            <i class="fas fa-rocket mr-3"></i>流程重构</a>
        <ul style="display:none;list-style-type:none" id="dio">
            <li><a href="refactory_transf.jsp" id="one" class="list-group-item list-group-item-action waves-effect">
                <i class="fas fa-truck mr-3"></i>if-switch互转</a></li>
            <li><a href="refactory_transf.jsp" id="one" class="list-group-item list-group-item-action waves-effect">
                <i class="fas fa-subway mr-3"></i>for-while互转</a></li>
        </ul>

        <a href="refactory_stats.jsp" class="list-group-item list-group-item-action waves-effect">
            <i class="fas fa-chart-pie mr-3"></i>信息统计</a>

    </div>

</div>
<!-- Sidebar -->
<script>
    var $object=document.getElementById('one');
    var $object2=document.getElementById('dio');
    $object.onclick=function(){
        if($object2.style.display=="none"){
            $object2.style.display="";

        } else{
            $object2.style.display="none";
        }
    }
</script>
</body>
</html>
