<%@ page import="java.util.List" %>
<%@ page import="com.SaleHouse.Entity.House" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/7
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/houseList.css">
</head>
<body>
<%
    List<House> houses = (List<House>)request.getAttribute("houses");
%>

<%@include file="/head.jsp"%>

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
                <a href="#">+订购</a>
            </div>
        </li>
    <%}%>
    </ul>
</div>


</body>
</html>
