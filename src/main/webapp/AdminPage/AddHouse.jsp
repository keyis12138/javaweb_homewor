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
    <script type="text/javascript">
        $(function () {
            $("#btn").click(function () {
                var name = $("#name").val();
                var size = $("#size").val();
                var location = $("#location").val();
                var price = $("#price").val();
                var photoa = $("#photoa").val();
                var photob = $("#photob").val();
                var wysort = $("#wysort").val();
                var jzsort = $("#jzsort").val();
                var zxstate = $("#zxstate").val();
                var year =  $("#year").val();
                var developer = $("#developer").val();
                var fileNamea = getFileName(photoa);
                var fileNameb = getFileName(photob);

                function getFileName(o){
                    var pos=o.lastIndexOf("\\");
                    return o.substring(pos+1);
                }
                $.post("../HouseServlet",
                    {
                        action:"add",
                        name:name,
                        size:size,
                        location:location,
                        price:price,
                        wysort:wysort,
                        jzsort:jzsort,
                        zxstate:zxstate,
                        developer:developer,
                        year:year,
                        photob:fileNameb,
                        photoa:fileNamea
                    },
                    function (data){
                        var dataObj=eval("("+data+")");
                        alert(dataObj.result);
                        window.location.href="../AdminServlet?action=house";
                    })
            })
        })
    </script>
</head>
<body>
<style>
    input{
        width:100% ;
    }
</style>
<%@include file="add.jsp"%>
<div  style="text-align: center" >
    <form action="../HouseServlet" method="post" name="form1" enctype="application/x-www-form-urlencoded">
        <table  border="1px" style="width: 80%;margin:auto">
            <tr>
                <td>?????????</td>
                <td><input type="text" name="name" id="name"></td>
            </tr>
            <tr>
                <td>?????????</td>
                <td><input type="text" name="size" id="size" ></td>
            </tr>
            <tr>
                <td>?????????</td>
                <td><input type="text" name="location" id="location" ></td>
            </tr>
            <tr>
                <td>?????????</td>
                <td><input type="text" name="price" id="price" ></td>
            </tr>
            <tr>
                <td>???????????????</td>
                <td><input type="text" name="wysort" id="wysort" ></td>
            </tr>
            <tr>
                <td>???????????????</td>
                <td><input type="text" name="jzsort" id="jzsort" ></td>
            </tr>
            <tr>
                <td>???????????????</td>
                <td><input type="text" name="zxstate" id="zxstate" ></td>
            </tr>
            <tr>
                <td>???????????????</td>
                <td><input type="text" name="year" id="year" ></td>
            </tr>
            <tr>
                <td>????????????</td>
                <td><input type="text" name="developer" id="developer" ></td>
            </tr>
            <tr>
                <td>????????????</td>
                <td><input type="file" name="photoa" id="photoa"></td>
            </tr>
            <tr>
                <td>????????????</td>
                <td><input type="file" name="photob" id="photob"></td>
            </tr>
            <tr>
                <td colspan="2" align="centert"><input type="button" value="??????" id="btn" style="display:block;margin:0 auto"></td>
            </tr>
        </table>
    </form>
</body>
</html>
