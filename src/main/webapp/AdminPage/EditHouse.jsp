<%@ page import="com.SaleHouse.Entity.House" %>
<%@ page import="com.SaleHouse.Entity.HouseInfo" %><%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/15
  Time: 15:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
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
                        alert(dataObj.result)
                    })
            })


        })
    </script>
</head>
<body>
<%
    House house = (House) request.getAttribute("houses");
    HouseInfo houseInfo = (HouseInfo) request.getAttribute("housesinfo");
%>
<H1>编辑房屋信息</H1>
<form action="../HouseServlet" method="post" name="form1" enctype="application/x-www-form-urlencoded">
    <table border="1px">
        <tr>
            <td>名称：</td>
            <td><input type="text" name="name" id="name" value="<%=house.getHname()%>"></td>
        </tr>
        <tr>
            <td>面积：</td>
            <td><input type="text" name="size" id="size" value="<%=house.getHsize()%>"></td>
        </tr>
        <tr>
            <td>地址：</td>
            <td><input type="text" name="location" id="location" value="<%=house.getHlocation()%>"></td>
        </tr>
        <tr>
            <td>价格：</td>
            <td><input type="text" name="price" id="price" value="<%=house.getHprice()%>"></td>
        </tr>
        <tr>
            <td>物业类别：</td>
            <td><input type="text" name="wysort" id="wysort" value="<%=houseInfo.getWysort()%>"></td>
        </tr>
        <tr>
            <td>建筑类别：</td>
            <td><input type="text" name="jzsort" id="jzsort" value="<%=houseInfo.getJzsort()%>"></td>
        </tr>
        <tr>
            <td>装修状况：</td>
            <td><input type="text" name="zxstate" id="zxstate" value="<%=houseInfo.getZxstate()%>"></td>
        </tr>
        <tr>
            <td>产权年限：</td>
            <td><input type="text" name="year" id="year" value="<%=houseInfo.getYear()%>"></td>
        </tr>
        <tr>
            <td>开发商：</td>
            <td><input type="text" name="developer" id="developer" value="<%=houseInfo.getDeveloper()%>"></td>
        </tr>
        <tr>
            <td>预览图：</td>
            <td><input type="file" name="photo" id="photo" value="<%=house.getHimg()%>"></td>
        </tr>
        <tr>
            <td>详细图：</td>
            <td><input type="file" name="photob" id="photob" value="<%=houseInfo.getImage()%>"></td>
        </tr>
        <tr>
            <td colspan="2" align="centert"><input type="button" value="提交" id="btn" style="display:block;margin:0 auto"></td>
        </tr>
    </table>
</form>
</body>
</html>
