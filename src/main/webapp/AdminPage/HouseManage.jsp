<%@ page import="com.SaleHouse.Entity.House" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/7
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>
    <script src="script/jquery-1.7.2.js"></script>
    <script>
        $(function (){
            $("#add").click(function (){
                location.href="AdminPage/AddHouse.jsp";
            })
        })
    </script>
</head>
<body>

<style>
    .style1{
        display: block;
    }
</style>
<%
    List<House> houses = (List<House>)request.getAttribute("houses");
%>
<table border="1px">
    <%for (House house:houses) {%>
    <tr>
        <td rowspan="3"><img src="<%=house.getHimg()%>"></td>
        <td class="style1"><%=house.getHname()%></td>
        <td class="style1"><%=house.getHsize()%></td>
        <td class="style1"><%=house.getHlocation()%></td>
        <td class="style1" align="center"><input type="button" value="编辑"><input type="button" value="删除"></td>
        <td rowspan="3" style="color:red;text-align: center;"><%=house.getHprice()%>>元/㎡</td>
    </tr>
    <%}%>

</table>
<input type="button" value="新增" id="add">
</body>
</html>
