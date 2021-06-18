<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.SaleHouse.Entity.House" %>
<html>
<head>
    <title>房屋管理</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="css/all.css">
    <script src="script/jquery-1.7.2.js"></script>
    <script>
        $(function (){
            $("#add").click(function (){
                location.href="AdminPage/AddHouse.jsp";
            })


        })
        function conf(name,id) {
            if(confirm("确定删除[" + name +"]吗？")){
                window.location.href = "HouseServlet?action=delete&houseid="+id;
            }
        }
    </script>
</head>
<body>
<!--包括另一个网页 -->
<%@include file="order.jsp"%>
<div style="text-align: center">
    <table align="center" border="1" style="width: 80%;margin:auto ">
        <thead>
        <th >房屋编号</th>
        <th >房屋实景</th>
        <th >房屋名字</th>
        <th>房屋大小</th>
        <th>房屋位置</th>
        <th>房屋价格</th>
        <th></th>
        </thead>
        <tbody>
        <%
            List<House> houses= (List<House>)request.getAttribute("houses");
            for(House house:houses){%>
        <tr>
            <td>
                <%=house.getHid()%>
            </td>
            <td>
                <%=house.getHimg()%>
            </td>
            <td>
                <%=house.getHname()%>
            </td>
            <td>
                <%=house.getHsize()%>
            </td>
            <td>
                <%=house.getHlocation()%>
            </td>
            <td>
                <%=house.getHprice()%>
            </td>
            <td>
                <a href="HouseServlet?action=edit&houseid=<%=house.getHid()%>">编辑</a>
                <a href="#" onclick="conf('<%=house.getHname()%>','<%=house.getHid()%>')">删除</a>
            </td>
        </tr>
        <%}%>
        </tbody>
    </table>
    <input type="button" value="新增" id="add">
</div>
</body>
</html>

