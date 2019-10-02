<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.min.css" rel="stylesheet">
</head>

<body>

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
                    <a href="https://mdbootstrap.com/docs/jquery/" target="_blank">返回主页</a>
                    <span>/</span>
                    <span>查看重构详情</span>
                </h4>

                <form class="d-flex justify-content-center">
                    <!-- Default input -->
                    <input type="search" placeholder="请输入查找内容" aria-label="Search" class="form-control">
                    <button class="btn btn-primary btn-sm my-0 p" type="submit">
                        <i class="fas fa-search"></i>
                    </button>

                </form>

            </div>

        </div>
        <!-- Heading -->

        <div class="row wow fadeIn">

            <!--Grid column-->
            <div class="col-md-12 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header">已上传文件</div>
                    <!--Card content-->
                    <div class="card-body">


                        <!-- Table  -->
                        <table class="table table-hover">
                            <!-- Table head -->
                            <thead class="blue lighten-4">
                            <tr>
                                <th>编号</th>
                                <th>上传日期</th>
                                <th>选择查看</th>
                            </tr>
                            </thead>
                            <!-- Table head -->

                            <!-- Table body -->
                            <tbody>
                            <tr>
                                <th scope="row">1</th>
                                <td>。。。。。</td>
                                <td><a href="#" style="color:blue">查看重构信息</a></td>

                            </tr>
                            <tr>
                                <th scope="row">2</th>
                                <td>。。。。。</td>
                                <td><a href="#" style="color:blue">查看重构信息</a></td>
                            </tr>
                            <tr>
                                <th scope="row">3</th>
                                <td>。。。。。</td>
                                <td><a href="#" style="color:blue">查看重构信息</a></td>
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
            <div class="col-md-9 mb-4">

                <!--Card-->
                <div class="card">

                    <div class="card-header">此java文件重构信息统计</div>
                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="myChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-3 mb-4">

                <!--Card-->
                <div class="card mb-4">

                    <!-- Card header -->
                    <div class="card-header text-center">
                        自动重构类型占比
                    </div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="pieChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

                <!--Card-->
                <div class="card mb-4">

                    <!--Card content-->
                    <div class="card-body">

                        <!-- List group links -->
                        <div class="list-group list-group-flush">
                            <a class="list-group-item list-group-item-action waves-effect">上传日期
                                <span class="badge badge-success badge-pill pull-right">2019-05-28

                  </span>
                            </a>
                            <a class="list-group-item list-group-item-action waves-effect">重构时间
                                <span class="badge badge-danger badge-pill pull-right">6.7s

                  </span>
                            </a>
                            <a class="list-group-item list-group-item-action waves-effect">是否已经重构
                                <span class="badge badge-primary badge-pill pull-right">是</span>
                            </a>
                            <a class="list-group-item list-group-item-action waves-effect">重构的总数量
                                <span class="badge badge-warning badge-pill pull-right">315</span>
                            </a>

                        </div>
                        <!-- List group links -->

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->

        </div>
        <!--Grid row-->

        <!-- Heading -->
        <div class="card mb-4 wow fadeIn">

            <!--Card content-->
            <div class="card-body d-sm-flex justify-content-between">

                <h4 class="mb-2 mb-sm-0 pt-1">
                    <a href="https://mdbootstrap.com/docs/jquery/" target="_blank">返回主页</a>
                    <span>/</span>
                    <span>其他统计信息</span>
                </h4>

                <form class="d-flex justify-content-center">
                    <!-- Default input -->
                    <input type="search" placeholder="请输入查找你内容" aria-label="Search" class="form-control">
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
            <div class="col-lg-6 col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">重构文件数量统计</div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="lineChart"></canvas>

                    </div>

                </div>
                <!--/.Card-->

            </div>
            <!--Grid column-->





            <!--Grid column-->
            <div class="col-lg-6 col-md-6 mb-4">

                <!--Card-->
                <div class="card">

                    <!-- Card header -->
                    <div class="card-header">自动重构时间</div>

                    <!--Card content-->
                    <div class="card-body">

                        <canvas id="horizontalBar"></canvas>

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
           role="button">下载重构统计信息
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
        <a href="refactory_name.jsp" target="_blank"> 南京理工大学 </a>
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
            labels: ["流程重构", "命名重构", "if-switch互转", "for-while互转", "多if转单条件", "多条件转单if"],
            datasets: [{
                label: '# 数量：处',
                data: [34, 23, 45, 178, 12, 23],
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
            labels: ["流程重构", "命名重构", "if-switch互转", "for-while互转", "多条件转单if","多if转单条件"],
            datasets: [{
                data: [34, 23, 45, 178, 12,23],
                backgroundColor: ["#F7464A", "#b14346", "#FDB45C", "#46BFBD", "#4D5360","#4D5360"],
                hoverBackgroundColor: ["#FF5A5E", "#5AD3D1", "#fe83ff", "#A8B3C5", "#616774","#4D5360"]
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
            labels: ["周一", "周二", "周三", "周四", "周五", "周六", "周日"],
            datasets: [
                {
                    label: "文件数量：个",
                    backgroundColor: [
                        'rgba(0, 137, 132, .2)',
                    ],
                    borderColor: [
                        'rgba(0, 10, 130, .7)',
                    ],
                    data: [3, 7, 12, 10, 15, 3, 1]
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
            "labels": ["java文件1", "java文件2", "java文件3", "java文件4", "java文件5", "java文件6", "java文件7"],
            "datasets": [{
                "label": "单位：s",
                "data": [3.5, 5.5, 7, 12, 22, 1.7, 14],
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

