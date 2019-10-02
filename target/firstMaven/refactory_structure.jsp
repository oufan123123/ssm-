<%@ page contentType="text/html;charset=utf-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.min.css" rel="stylesheet">




    <link type="text/css" rel="stylesheet" href="styles/shCoreEmacs.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link href="./font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ztree/metroStyle.css">
    <link href="css/jquery.scrollbar.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/nth-tabs.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/nth-icons.css" rel="stylesheet">



</head>
<body>
<jsp:include page="./header.jsp"></jsp:include>




<jsp:include page="./sidebar.jsp"></jsp:include>


<main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">

        <!-- Heading -->
        <div class="card mb-4 wow fadeIn">

            <!--Card content-->
            <div class="card-body d-sm-flex justify-content-between">

                <h4 class="mb-2 mb-sm-0 pt-1">
                    <a href="#" target="_blank">返回主页</a>
                    <span>/</span>
                    <span>格式重构</span>
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

                    <div class="card-header">重构前</div>
                    <!--Card content-->
                    <div class="card-body">



                            <canvas id="lineChart"></canvas>



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

                    <div class="card-header">重构后</div>
                    <!--Card content-->
                    <div >



                        <div id="modal-addNewProject" class="modal fade bs-example-modal-sm" tabindex="-1">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <%-- <jsp:include page="newactivity.jsp"></jsp:include> --%>
                                    <div class="modal-header no-padding">
                                        <div class="table-header">
                                            <button type="button" class="close" data-dismiss="modal"
                                                    aria-hidden="true">
                                                <span class="white">&times;</span>
                                            </button>
                                            选择项目
                                        </div>
                                    </div>
                                    <!-- 这里要放form表单 -->
                                    <div class="modal-body no-padding">
                                        <div class="profile-user-info profile-user-info-striped">
                                            <form class="form-horizontal" role="form"
                                                  id="newProjectform" method="post"
                                                  onsubmit="return false;">


                                                <div class="space-2"></div>
                                                <div class="form-group">
                                                    <label class="col-sm-2 control-label no-padding-right "
                                                           for="name"> 项目名称 </label>
                                                    <div class="col-sm-9">
                                                        <div class="col-xs-12 col-sm-12">
                                                            <select class="form-control a-machine-select width-60"
                                                                    id="name" name="name" data-placeholder="请选择项目...">

                                                            </select>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="modal-footer no-margin-top">
                                                    <button class="btn btn-sm btn-danger pull-left"
                                                            data-dismiss="modal">
                                                        <i class="icon-remove"></i> 关闭
                                                    </button>
                                                    <button class="btn btn-sm  btn-info pull-right" type="button"
                                                            onclick="checkNewProjectform(this)">
                                                        <i class="icon-ok bigger-110"></i> 添加
                                                    </button>
                                                </div>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                                <!-- /.modal-content -->
                            </div>
                            <!-- /.modal-dialog -->
                        </div>


                        <div class="container-fluid">
                            <br><br>
                            <div class="row">
                                <div class="col-sm-3 col-md-2 sidebar">
                                    <div class="panel-heading">
                                        <div class="panel-title">


                                        </div>
                                    </div>

                                    <div id="ztree">
                                        <!-- <ul id="treeDemo" class="ztree" ></ul> -->
                                    </div>


                                </div>
                                <div >
                                    <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 ">

                                        <div class="">
                                            <!--使用时只需此标签，class固定,id自己定义-->
                                            <div class="nth-tabs" id="main-tabs">


                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script src="${pageContext.request.contextPath}/bootstrap/js/jquery.js"></script>
                        <script src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.js"></script>
                        <script src="${pageContext.request.contextPath}/layer/layer.js"></script>
                        <script src="${pageContext.request.contextPath}/ztree/jquery.ztree.all-3.5.min.js"></script>
                        <script src="js/nth-tabs.min.js"></script>
                        <script src="js/jquery.scrollbar.min.js"></script>
                        <script type="text/javascript" src="scripts/shCore.js"></script>
                        <script type="text/javascript" src="scripts/shBrushCSharp.js"></script>
                        <script type="text/javascript" src="scripts/shBrushCpp.js"></script>
                        <script src="js/daima.js"></script>




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
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">
                    <div class="card-header">水平空行处理</div>
                    <!--Card content-->
                    <div class="card-body">

                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue-grey lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构方式</th>
                                <th>重构详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>11行8列</td>
                                <td>保留字if与（之间增加水平空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>14行17列</td>
                                <td>，与其后字段之间增加水平空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>23行2列</td>
                                <td>}与保留字else之间增加水平空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>25行14列</td>
                                <td>//两边增加水平空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>31行9列</td>
                                <td>&两边增加水平空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header">制表符转空格</div>
                    <!--Card content-->
                    <div class="card-body">


                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构内容</th>
                                <th>查看详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>5行7列</td>
                                <td>将制表符替换为4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>7行18列</td>
                                <td>将制表符替换为4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>11行3列</td>
                                <td>将制表符替换为4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>17行9列</td>
                                <td>将制表符替换为4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

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
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">
                    <div class="card-header">K&R风格代码处理</div>
                    <!--Card content-->
                    <div class="card-body">

                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue-grey lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构方式</th>
                                <th>重构详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>4行5列</td>
                                <td>为当前语句增加{}</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>8行11列</td>
                                <td>将第9行的{提至第8行末尾</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>16行5列</td>
                                <td>if()后增加{}</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>17行4列</td>
                                <td>将if（后的语句移动到下一行</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">5</th>
                                <td>20行19列</td>
                                <td>if()后增加{}</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">6</th>
                                <td>28行7列</td>
                                <td>将语句末尾的}移动到下一行</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">7</th>
                                <td>38行13列</td>
                                <td>将语句末尾的}移动到下一行</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">8</th>
                                <td>41行1列</td>
                                <td>将保留字else提至上一行</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header">源文件结构调整</div>
                    <!--Card content-->
                    <div class="card-body">


                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构内容</th>
                                <th>查看详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>前10行</td>
                                <td>为import使用通配符语句添加提示</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>前10行</td>
                                <td>将包声明信息放到import信息前面</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>前10行</td>
                                <td>修改注释的位置为类的最前方</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>

                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

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
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">
                    <div class="card-header">缩进处理</div>
                    <!--Card content-->
                    <div class="card-body">

                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue-grey lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构方式</th>
                                <th>重构详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>6行18列</td>
                                <td>当前行缩进4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>8行13列</td>
                                <td>当前行缩进4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>44行14列</td>
                                <td>当前行缩进4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">4</th>
                                <td>48行14列</td>
                                <td>当前行缩进4个空格</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>

                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header">一行一句</div>
                    <!--Card content-->
                    <div class="card-body">


                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>重构位置</th>
                                <th>重构内容</th>
                                <th>查看详情</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>7行8列</td>
                                <td>把语句从;处断开成两句</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>14行5列</td>
                                <td>把语句从;处断开成两句</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>27行18列</td>
                                <td>把语句从;处断开成两句</td>
                                <td><a href="#" style="color:mediumvioletred">点击查看</a></td>
                            </tr>

                            </tbody>
                            <!-- Table body -->
                        </table>
                        <!-- Table  -->

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
        <a class="btn btn-outline-white" href="refactory_name.jsp" target="_blank"
           role="button">下载重构结果
            <i class="fas fa-download ml-2"></i>
        </a>
        <a class="btn btn-outline-white" href="refactory_name.jsp" target="_blank" role="button">
            自动重构规范
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





</body>
</html>