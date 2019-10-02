<%@page pageEncoding="UTF-8" %>
<html xmlns=”http://www.w3.org/1999/xhtml”>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link type="text/css" rel="stylesheet" href="styles/shCoreEmacs.css"/>
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.css">
    <link href="./font-awesome/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ztree/metroStyle.css">
    <link href="css/jquery.scrollbar.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/nth-tabs.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/nth-icons.css" rel="stylesheet">
    <style type="text/css">
        .syntaxhighlighter div {
            font-size: 17px !important;
        }
        .syntaxhighlighter {
            overflow-y: hidden !important;
            margin: 0.5em 0 1em 0 !important;

        }
        .nth-tabs-content {
            width: 100%;
            height: calc(100% - 42px);
            position: relative;
            overflow-y: scroll;
        }
    </style>
</head>

<body  filepath="${param.path}">
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


</body>
</html>
