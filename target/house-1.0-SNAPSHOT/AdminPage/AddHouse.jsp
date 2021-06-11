<%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/7
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="../script/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                var name = $("#name").val();
                var size = $("#size").val();
                var location = $("#location").val();
                var pricce = $("#price").val();
                var photo = $("#photo").val();
                var fileName = getFileName(photo);

                function getFileName(o){
                    var pos=o.lastIndexOf("\\");
                    return o.substring(pos+1);
                }
                $.post("../HouseServlet",
                    {
                        name:name,
                        size:size,
                        location:location,
                        pricce:pricce,
                        photo:fileName
                    },
                    function (data){
                        var dataObj=eval("("+data+")");
                        alert(dataObj.result)
                    })
            })
        })
    </script>
</head>
<body>
<H1>新增房屋</H1>
<form action="../HouseServlet" method="post" name="form1" enctype="application/x-www-form-urlencoded">
<table border="1px">
    <tr>
        <td>名称：</td>
        <td><input type="text" name="name" id="name" value="123"></td>
    </tr>
    <tr>
        <td>面积：</td>
        <td><input type="text" name="size" id="size" value="12"></td>
    </tr>
    <tr>
        <td>地址：</td>
        <td><input type="text" name="location" id="location" value="1"></td>
    </tr>
    <tr>
        <td>价格：</td>
        <td><input type="text" name="price" id="price" value="11"></td>
    </tr>
    <tr>
        <td>预览图：</td>
        <td><input type="file" name="photo" id="photo" value="111.jpg"></td>
    </tr>
    <tr>
        <td colspan="2" align="centert"><input type="button" value="提交" id="btn" style="display:block;margin:0 auto"></td>
    </tr>
</table>
</form>
</body>
</html>
