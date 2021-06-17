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
    <link rel="stylesheet" type="text/css" href="css/all.css">
    <script>
        function conf(uname,name,id) {
            if(confirm("确定订购[" + name +"]吗？")){
                window.location.href = "OrderServlet?action=add&hid="+id+"&username="+uname;
            }
        }
    </script>
</head>
<body>
<%
    List<House> houses = (List<House>)request.getAttribute("houses");
    String username = (String) request.getAttribute("username");
%>
<div id="headCon">
    <div>
        <p>我的楼盘 你的爱~</p>
        <ol>
            <%if(username==null){%>
            <li><a href="login.jsp">请登录</a></li>
            <li><a href="register.jsp">注册</a></li>
            <%}else{%>
            <li><a href="#">欢迎<%=username%></a></li>
            <%}%>
            <a href="OrderServlet?username=<%=username%>&action=find">我的订单</a>
        </ol>
    </div>
    <ul>
        <a href="#"><li></li></a>
        <ol>
            <li><a href="#" class="first">首页</a></li>
            <li><a href="#">新房</a></li>
            <li><a href="#">二手房</a></li>
            <li><a href="#">租房</a></li>
            <li><a href="#">查房价</a></li>
            <li class="search">
                <input placeholder="顺鑫" >
                <img src="houseImg/search.png" style="width: 29px" >
            </li>
        </ol>
    </ul>
</div>

<div class="content">
    <ul>
    <%for (House house:houses) {%>
        <li>
            <div class="imga">
                <img src="<%=house.getHimg()%>">
            </div>
            <div class="info">
                <span><a href="DetailServlet?id=<%=house.getHid()%>"><%=house.getHname()%>⭐⭐⭐⭐⭐</a></span>
                <span class="size"><%=house.getHsize()%>></span><br>
                <span class="location"><%=house.getHlocation()%></span>

            </div>
            <div class="price">
                        <span>
                            <%=house.getHprice()%>
                        </span>
                <em>元/㎡</em><br>
                <a href="#" onclick="conf('<%=username%>','<%=house.getHname()%>','<%=house.getHid()%>')">+订购</a>
            </div>
        </li>
    <%}%>
    </ul>
</div>


</body>
</html>
