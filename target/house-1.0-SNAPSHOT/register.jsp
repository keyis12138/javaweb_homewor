<%--
  Created by IntelliJ IDEA.
  User: A9819
  Date: 2021/6/5
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <script src="script/jquery-1.7.2.js"></script>
    <script>
        $(function () {
            var nameflag=0,pw1flag=0,pw2flag=0;
            $("#username").blur(function checkname() {
                var username = $("#username").val();
                $.post("UserServlet",
                    {
                        action:"check",
                        username:username,
                    },
                    function (result){
                        if(result=="true"){
                            $("#userspan").css("color","green");
                            $("#userspan").html("用户名可用");
                            nameflag=1
                        }else{
                            $("#userspan").css("color","red");
                            $("#userspan").html("用户名已存在");
                            nameflag=0
                        }
                    })
            })
            $("#password").blur(function checkpw1() {
                var pswd=$("#password").val();
                if(pswd==""){
                    $("#pwspan").css("color","red");
                    $("#pwspan").html("密码不可为空");
                    pw1flag=0
                }else{
                    $("#pwspan").html("");
                    pw1flag=1
                }
            })

            $("#password2").blur(function checkpw2() {
                var pswd=$("#password").val();
                var pswd2=$("#password2").val();
                if(pswd!=pswd2){
                    pw2flag=0
                    $("#pw2span").css("color","red");
                    $("#pw2span").html("两次密码不一致");
                }else {
                    $("#pw2span").html("");
                    pw2flag=1
                }
            })
            $("#register").click(function () {
                if(nameflag!=1||pw1flag!=1||pw2flag!=1){
                    alert("请仔细填写表单")
                }else {
                    var username = $("#username").val();
                    var pswd=$("#password").val();
                    var email=$("#email").val();
                    $.post("UserServlet",
                        {
                            action:"register",
                            username:username,
                            password:pswd,
                            email:email
                        },
                        function (result){
                            if(result=="true"){
                                alert("注册成功");
                                location.href="login.jsp";
                            }else{
                                alert("注册失败")
                            }
                        })
                }

            })
        })
    </script>
</head>
<body>
<body>
<div id="login">
    <h1>Register</h1>
    <form>
        <input type="text" name="username" id="username" placeholder="用户名"> <span id="userspan"></span>
        <input type="password" name="password" id="password" placeholder="密码"><span id="pwspan"></span>
        <input type="password" name="password2" id="password2" placeholder="确认密码"><span id="pw2span"></span>
        <input type="email" name="email" id="email" placeholder="电子邮箱">
        <button class="but" type="button" id="rgister">提交</button>
    </form>
</div>
</body>
</body>
</html>
