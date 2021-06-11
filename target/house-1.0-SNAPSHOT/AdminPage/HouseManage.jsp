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
    <link rel="stylesheet" type="text/css" href="css/houseList.css">
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
    <style>
        .content .price a{
            float: none;
        }
    </style>
</head>
<body>
<%
    List<House> houses = (List<House>)request.getAttribute("houses");
%>
<div class="content">
    <ul>
        <%for (House house:houses) {%>
        <li>
            <div class="imga">
                <img src="<%=house.getHimg()%>">
            </div>
            <div class="info">
                <span class="name"><%=house.getHname()%>⭐⭐⭐⭐⭐</span><br>
                <span class="size"><%=house.getHsize()%>></span><br>
                <span class="location"><%=house.getHlocation()%></span>
            </div>
            <div class="price">
                        <span>
                            <%=house.getHprice()%>
                        </span>
                <em>元/㎡</em><br>
                <a href="HouseServlet?action=edit&houseid=<%=house.getHid()%>">编辑</a><a href="#" onclick="conf('<%=house.getHname()%>','<%=house.getHid()%>')">删除</a>
            </div>
        </li>
        <%}%>
    </ul>
</div>

<input type="button" value="新增" id="add">
</body>
</html>
