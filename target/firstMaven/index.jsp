<%@ page contentType="text/html;charset=utf-8" language="java" import="java.util.*"  %>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Material Design Bootstrap</title>

<script src="js/jQuery-3.4.1.js"></script>
  <script>
    var user=new Object();

    var list_user=[];
    $(document).ready(function () {
    $('#one').click(function () {
       console.log("are you ok");
       user.name=$.trim($('#text1').val());
       user.password=$.trim($('#text2').val());
       list_user.push(user);
       list_user.push(user);


       console.log(user.toString());
       $.ajax({
        type: "POST",
        url: "user/select",
        data: {ObjectJson1: JSON.stringify(list_user),ObjectJson2: JSON.stringify(user)},
        dataType: "text",
        timeout: 1000,
        success: function (result) {
          console.log("success");
          if(result=="success"){
            window.location.href="test.html";
          }

        }



      })


    })
    });
  </script>
</head>

<body>

<form>
  <table>
    <tr>
      <td>
        name
      </td>
      <td>
        <input type="text" name="text1" id="text1">
      </td>
    </tr>
    <tr>
      <td>
        password
      </td>
      <td>
        <input type="text" name="text2" id="text2">
      </td>

    </tr>
    
  </table>

</form>

<button id="one" >click me</button>

</body>

</html>
