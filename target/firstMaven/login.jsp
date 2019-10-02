<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <title>java代码重构</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
	
	<script src="./bootstrap/js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="./bootstrap/css/bootstrap.css">
    <script src="./bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript">
        $(function() {
            $(".knob").knob();
        });
    </script>

</head>

<body >

    <!-- Demo page code -->


	<%-- <jsp:include page="./user_sidebar.jsp"></jsp:include> --%>
	
	
	<div >
	
	
    
	<div class="row clearfix" style="text-align: center;margin-top: 160px;font-size: 23px ">
		<div class="col-md-12 column">
			<h3>
				请上传一个需要重构的java源程序文件
			</h3>
		</div>
	</div>
<!-- 	删除了onSubmit="return check();" -->

		<div class="input-group">
			<div class="input-group-prepend">
				<span class="input-group-text" id="inputGroupFileAddon01">Upload</span>
			</div>
			<div class="custom-file">
				<input type="file" class="custom-file-input" id="inputGroupFile01"
					   aria-describedby="inputGroupFileAddon01">
				<label class="custom-file-label" for="inputGroupFile01">Choose file</label>
			</div>
		</div>
	
	<br/>
	
<!-- 	<div id="define" class="row clearfix"  > -->
<!-- 	<div class="col-md-2 column"> -->
<!-- 		</div> -->
<!-- 		<div class="col-md-8 column"> -->
<!-- 			<div class="col-md-6 column"> -->
			
<!-- 			<label>请选择用于检测的特征：</label> -->
<!-- 				<div class="checkbox"> -->
<!-- 				  <label> -->
<!-- 				    <input type="checkbox" name="defineVector" value="pms" class="defineVector"> -->
<!-- 				    	权限 -->
<!-- 				  </label> -->
<!-- 				</div> -->
<!-- 				<div class="checkbox"> -->
<!-- 				  <label> -->
<!-- 				    <input type="checkbox" name="defineVector" value="api" class="defineVector"> -->
<!-- 				   		敏感API -->
<!-- 				  </label> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="col-md-6 column"> -->
<!-- 			</div> -->
			
<!-- 		</div> -->
		
<!-- 		<div class="col-md-2 column"> -->
<!-- 		</div> -->
	</div>


  </body>
    <link type="text/css" rel="stylesheet" href="./fileinput/css/fileinput.css" />
	<script type="text/javascript" src="./fileinput/js/fileinput.js"></script>
	<script type="text/javascript" src="./fileinput/js/locales/zh.js"></script>
  
  <script type="text/javascript">
	initFileInput("apkFile");
	function initFileInput(ctrlName) {
		var control = $("#" + ctrlName);
		control.fileinput({
			language:"zh", //设置语言
			uploadUrl: "./refactory/addProject", //上传的地址(访问接口地址)
			allowedFileExteions : [ "java" ],//接收的文件后缀
			showPreview : false, //是否显示预览
			allowedPreviewTypes : [ "image" ],
			showCaption: true,//是否显示标题
			browseClass: "btn btn-primary", //按钮样式  
			dropZoneEnabled: false,//是否显示拖拽区域
			//maxFileCount: 5, //表示允许同时上传的最大文件个数
			
			//enctype: "multipart/form-data",
			//validateInitialCount:true,
			//previewFileIcon: "<i class='glyphicon glyphicon-'></i>",
			msgFilesTooMany: "选择上传的文件数量为{n}，超过允许的最大数值{m}！",
			
			
			
		});
	}
	
	$("#apkFile").on("fileuploaded", function(event, data, previewId, index) {
		
		console.log(data.response);
		
		result=data.response;
		
		var id =result.id;
		var name=result.name;
		var path=result.path;
		var time=result.time;
		
		
		 window.location.href = "refactory_All.jsp?id="
			+id+"&name="+name+"&path="+path+"&time="+time;		

});

	
</script>

<script type="text/javascript">
        $("[rel=tooltip]").tooltip();
        $(function() {
            $('.demo-cancel-click').click(function(){return false;});
        });
        
      /*  function to(){
        	window.location.href = "refactory_All.jsp";
            } */
    </script>
</html>
