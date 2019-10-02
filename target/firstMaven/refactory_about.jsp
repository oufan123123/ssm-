<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>代码重构</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.min.css" rel="stylesheet">
    <style>

        .map-container{
            overflow:hidden;
            padding-bottom:56.25%;
            position:relative;
            height:0;
        }
        .map-container iframe{
            left:0;
            top:0;
            height:100%;
            width:100%;
            position:absolute;
        }
    </style>
</head>

<body >
<jsp:include page="./header.jsp"></jsp:include>
<jsp:include page="./sidebar.jsp"></jsp:include>


<!--Main layout-->
<main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">

        <!-- Heading -->
        <div class="card mb-4 wow fadeIn">

            <!--Card content-->
            <div class="card-body d-sm-flex justify-content-between">

                <h4 class="mb-2 mb-sm-0 pt-1">
                    <a href="refactory_name.jsp" target="_blank">返回主页</a>
                    <span>/</span>
                    <span>部分自动重构思路展示</span>
                </h4>

                <form class="d-flex justify-content-center">
                    <!-- Default input -->
                    <input type="search" placeholder="输入您想查找的内容" aria-label="Search" class="form-control">
                    <button class="btn btn-primary btn-sm my-0 p" type="submit">
                        <i class="fas fa-search"></i>
                    </button>

                </form>

            </div>

        </div>
        <!-- Heading -->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-12 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header" style="font-size: 25px">格式重构</div>
                    <!--Card content-->
                    <div class="card-body">
                        <div class="container">

                            <hr/>
                            <p style="font-size: 18px"><kbd>空白字符</kbd></p>

                            <pre>
(1) 字符串中的空白字符需要进行转义
(2) 制表符不用于缩进逐行检测，判断当前字符串中是否包含制表符，将当前行开头的制表符用个替换（4个空格替换1个制表符）

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>特殊转义序列</kbd></p>

                            <pre>
对于具有特殊转义序列的任何字符(\b, \t, \n, \f, \r, ", '及\)，我们使用它的转义序列，将字符串中出现特殊转义序列的八进制或Unicode形式，
将其转为\b, \t, \n, \f, \r等形式。

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>非ASCII字符处理</kbd></p>

                            <pre>
如果当前行检测到使用了Unicode转义符或是一些实际的Unicode字符时，建议做些注释给出解释。[如果没有注释,可以在尾部添加  //需要对转义字符给出注释]


                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>源文件结构</kbd></p>

                            <pre>
许可证或版本信息（应该放在文件最前边）、package语句（不换行，不受列限制）、import语句、一个顶级类，每部分之间用一个空行隔开。

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>import语句</kbd></p>

                            <pre>
(1) import不适用通配符(添加注释的方式提醒开发人员)
(2) 所有静态导入独立成组，所有非静态导入为一组（组内按字典排序）

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>类声明</kbd></p>

                            <pre>
(1) 只有一个顶级类,若出现其他顶级类，则删除
(2) 类成员顺序（这里解决重载[永不分离]原则，当一个类有多个构造函数，或是多个同名方法，这些函数/方法应该按顺序出现在一起，中间不要放进其它函数/方法。）

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd>K&R风格代码</kbd></p>

                            <pre>
（1） 与if, else, for, do, while语句一起使用，即使只有一条语句(或是空)，也应该把大括号写上（不能省略）
（2） 非空块：K & R 风格
 A 左大括号前不换行
 B 左大括号后换行
 C 右大括号前换行
 D 如果右大括号是一个语句、函数体或类的终止，则右大括号后换行; 否则不换行。例如，如果右大括号后面是else或catch或逗号，则不换行。
（3） 空块：可以用简洁版本
一个空的块状结构里什么也不包含，大括号可以简洁地写成{}，不需要换行。例外：如果它是一个多块语句的一部分(if/else 或 try/catch/finally) ，
即使大括号内没内容，右大括号也要换行。如，void doNothing() {}

                </pre>

                        </div>
                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->



        </div>
        <!--Grid row-->


        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-12 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header" style="font-size: 25px">命名重构</div>
                    <!--Card content-->
                    <div class="card-body">
                        <div class="container">

                            <hr/>
                            <p style="font-size: 18px"><kbd style="background-color: red">顺序重构</kbd></p>

                            <pre>
public protected private abstract static final transient volatile synchronized native strictfp后缀使用大写字母，
For example, 3000000000L rather than 3000000000l

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd style="background-color: red">统一标识符规则</kbd></p>

                            <pre>
（1） 标识符只能使用ASCII字母和数字
（2） 不使用的特殊前缀或后缀，如name_, mName, s_name和kName，在Java编程风格中都不再使用

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd style="background-color: red">标识符类型的规则处理</kbd></p>

                            <pre>
每个单词的第一个字母都大写，来得到大驼峰式命名；除了第一个单词，每个单词的第一个字母都大写，来得到小驼峰式命名。
（1） 包名【包名全部小写，连续的单词只是简单地连接起来，不使用下划线】
（2） 类名【大驼峰式命名法】
（3） 方法名【小驼峰式命名法】
（4） 常量名【常量名命名模式为CONSTANT_CASE，全部字母大写，用下划线分隔单词】
（5） 非常量字段名【小驼峰式命名法】
（6） 参数名【小驼峰式命名法】
注：参数应该避免用单个字符命名
（7） 局部变量名【小驼峰式命名法】
要避免用单字符进行命名，除了临时变量和循环变量，即使局部变量是final和不可改变的，也不应该把它示为常量，自然也不能用常量的规则去命名它【并不是用final修饰的变量都用大写命名】
（8） 类型变量名【二选一，建议前者】
单个的大写字母，后面可以跟一个数字(如：E, T, X, T2)，以类命名方式，后面加个大写的T(如：RequestT, FooBarT)。

                </pre>


                        </div>
                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->



        </div>
        <!--Grid row-->

        <!--Grid row-->
        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-12 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header" style="font-size: 25px">流程重构</div>
                    <!--Card content-->
                    <div class="card-body">
                        <div class="container">

                            <hr/>
                            <p style="font-size: 18px"><kbd >单if多条件转多if单条件</kbd></p>

                            <pre>
应用场景:复杂的条件逻辑致使程序的复杂度直线上升，
如果一个条件逻辑能用更为简洁明了的方式展示，则可以将其分成多个if语句，便于理解

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd >多if单条件转单if多条件</kbd></p>

                            <pre>
应用场景：检查条件各不相同，最终行为却一致。
如果发现这种情况，就应该使用“逻辑或”和“逻辑与”将它们合并为一个条件表达式。合并后的条件代码会表述“实际上只有一次条件检查，只不过有多个并列条件需要检查而已”，
从而使这一次检查的用意更清晰。当然，合并前和合并后的代码有着相同的效果，但原先代码传达出的信息却是“这里有一些各自独立的条件测试，

                </pre>
                            <hr/>
                            <p style="font-size: 18px"><kbd >以卫语句取代嵌套条件表达式</kbd></p>

                            <pre>
选中最外层需要被替换的条件逻辑，将其替换为卫语句。
检查是否有错，有需要的话，重复上述步骤。如果所有卫语句都引发同样的结果，可以使用合并条件表达式合并之。


                </pre>

                        </div>
                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->



        </div>
        <!--Grid row-->


    </div>
</main>
<!--Main layout-->

<!--Footer-->
<footer class="page-footer text-center font-small primary-color-dark darken-2 mt-4 wow fadeIn">

    <!--Call to action-->
    <div class="pt-4">
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/docs/jquery/getting-started/download/" target="_blank"
           role="button">下载重构信息
            <i class="fas fa-download ml-2"></i>
        </a>
        <a class="btn btn-outline-white" href="https://mdbootstrap.com/education/bootstrap/" target="_blank" role="button">自动重构规范
            <i class="fas fa-graduation-cap ml-2"></i>
        </a>
    </div>
    <!--/.Call to action-->

    <hr class="my-4">

    <!-- Social icons -->
    <div class="pb-4">
        <a href="https://www.facebook.com/mdbootstrap" target="_blank">
            <i class="fab fa-facebook-f mr-3"></i>
        </a>

        <a href="https://twitter.com/MDBootstrap" target="_blank">
            <i class="fab fa-twitter mr-3"></i>
        </a>

        <a href="https://www.youtube.com/watch?v=7MUISDJ5ZZ4" target="_blank">
            <i class="fab fa-youtube mr-3"></i>
        </a>

        <a href="https://plus.google.com/u/0/b/107863090883699620484" target="_blank">
            <i class="fab fa-google-plus mr-3"></i>
        </a>

        <a href="https://dribbble.com/mdbootstrap" target="_blank">
            <i class="fab fa-dribbble mr-3"></i>
        </a>

        <a href="https://pinterest.com/mdbootstrap" target="_blank">
            <i class="fab fa-pinterest mr-3"></i>
        </a>

        <a href="https://github.com/mdbootstrap/bootstrap-material-design" target="_blank">
            <i class="fab fa-github mr-3"></i>
        </a>

        <a href="http://codepen.io/mdbootstrap/" target="_blank">
            <i class="fab fa-codepen mr-3"></i>
        </a>
    </div>
    <!-- Social icons -->

    <!--Copyright-->
    <div class="footer-copyright py-3">
        © 2019 Copyright:
        <a href="https://mdbootstrap.com/education/bootstrap/" target="_blank"> 南京理工大学 </a>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
<!-- Initializations -->
<script type="text/javascript">
    // Animations initialization
    new WOW().init();

</script>

<!-- Charts -->
<script>
    // Line
    var ctx = document.getElementById("myChart").getContext('2d');
    var myChart = new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
            datasets: [{
                label: '# of Votes',
                data: [12, 19, 3, 5, 2, 3],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255,99,132,1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });

    //pie
    var ctxP = document.getElementById("pieChart").getContext('2d');
    var myPieChart = new Chart(ctxP, {
        type: 'pie',
        data: {
            labels: ["Red", "Green", "Yellow", "Grey", "Dark Grey"],
            datasets: [{
                data: [300, 50, 100, 40, 120],
                backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
            }]
        },
        options: {
            responsive: true,
            legend: false
        }
    });


    //line
    var ctxL = document.getElementById("lineChart").getContext('2d');
    var myLineChart = new Chart(ctxL, {
        type: 'line',
        data: {
            labels: ["January", "February", "March", "April", "May", "June", "July"],
            datasets: [{
                label: "My First dataset",
                backgroundColor: [
                    'rgba(105, 0, 132, .2)',
                ],
                borderColor: [
                    'rgba(200, 99, 132, .7)',
                ],
                borderWidth: 2,
                data: [65, 59, 80, 81, 56, 55, 40]
            },
                {
                    label: "My Second dataset",
                    backgroundColor: [
                        'rgba(0, 137, 132, .2)',
                    ],
                    borderColor: [
                        'rgba(0, 10, 130, .7)',
                    ],
                    data: [28, 48, 40, 19, 86, 27, 90]
                }
            ]
        },
        options: {
            responsive: true
        }
    });


    //radar
    var ctxR = document.getElementById("radarChart").getContext('2d');
    var myRadarChart = new Chart(ctxR, {
        type: 'radar',
        data: {
            labels: ["Eating", "Drinking", "Sleeping", "Designing", "Coding", "Cycling", "Running"],
            datasets: [{
                label: "My First dataset",
                data: [65, 59, 90, 81, 56, 55, 40],
                backgroundColor: [
                    'rgba(105, 0, 132, .2)',
                ],
                borderColor: [
                    'rgba(200, 99, 132, .7)',
                ],
                borderWidth: 2
            }, {
                label: "My Second dataset",
                data: [28, 48, 40, 19, 96, 27, 100],
                backgroundColor: [
                    'rgba(0, 250, 220, .2)',
                ],
                borderColor: [
                    'rgba(0, 213, 132, .7)',
                ],
                borderWidth: 2
            }]
        },
        options: {
            responsive: true
        }
    });

    //doughnut
    var ctxD = document.getElementById("doughnutChart").getContext('2d');
    var myLineChart = new Chart(ctxD, {
        type: 'doughnut',
        data: {
            labels: ["Red", "Green", "Yellow", "Grey", "Dark Grey"],
            datasets: [{
                data: [300, 50, 100, 40, 120],
                backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360"],
                hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#FFC870", "#A8B3C5", "#616774"]
            }]
        },
        options: {
            responsive: true
        }
    });

</script>

<!--Google Maps-->
<script src="https://maps.google.com/maps/api/js"></script>
<script>
    // Regular map
    function regular_map() {
        var var_location = new google.maps.LatLng(40.725118, -73.997699);

        var var_mapoptions = {
            center: var_location,
            zoom: 14
        };

        var var_map = new google.maps.Map(document.getElementById("map-container"),
            var_mapoptions);

        var var_marker = new google.maps.Marker({
            position: var_location,
            map: var_map,
            title: "New York"
        });
    }

    new Chart(document.getElementById("horizontalBar"), {
        "type": "horizontalBar",
        "data": {
            "labels": ["Red", "Orange", "Yellow", "Green", "Blue", "Purple", "Grey"],
            "datasets": [{
                "label": "My First Dataset",
                "data": [22, 33, 55, 12, 86, 23, 14],
                "fill": false,
                "backgroundColor": ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                    "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)",
                    "rgba(54, 162, 235, 0.2)",
                    "rgba(153, 102, 255, 0.2)", "rgba(201, 203, 207, 0.2)"
                ],
                "borderColor": ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
                    "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)",
                    "rgb(201, 203, 207)"
                ],
                "borderWidth": 1
            }]
        },
        "options": {
            "scales": {
                "xAxes": [{
                    "ticks": {
                        "beginAtZero": true
                    }
                }]
            }
        }
    });

</script>
</body>

</html>