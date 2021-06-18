<%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/5
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录</title>
    <link rel="stylesheet" type="text/css" href="css/login&register.css">
    <script src="script/jquery-1.7.2.js"></script>
    <script type="text/javascript">
        $(function(){
            $("#btn").click(function(){
                var username = $("#username").val();
                var password = $("#password").val();
                $.post("UserServlet",
                    {
                        action:"login",
                        username:username,
                        password:password
                    },
                    function (data){
                        var dataObj=eval("("+data+")");
                        if(dataObj.result=="true"){
                            alert("登录成功");
                            if(dataObj.role=="admin"){
                                location.href="AdminServlet?action=login";
                            }else{
                                location.href="ListServlet?username="+username;
                            }
                        }else{
                            alert(dataObj.result);
                        }
                    })
            })

            $("#reg").click(function () {
                location.href="register.jsp"
            })
        })
    </script>
</head>
<body>
<div id="login">
    <h1>Login</h1>
    <form method="post">
        <input type="text" required="required" placeholder="用户名" name="loginName" id="username">
        <input type="password" required="required" placeholder="密码" name="password" id="password">
        <button class="but" type="button" id="btn">登录</button><button class="but" type="button" id="reg">注册</button>
    </form>
</div>
</body>
</html>
