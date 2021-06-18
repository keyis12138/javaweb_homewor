package com.SaleHouse.Web;

import com.SaleHouse.Dao.UserDao;
import com.SaleHouse.Dao.impl.UserDaoimpl;
import com.SaleHouse.Entity.User;
import com.google.gson.Gson;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@WebServlet(name = "UserServlet", value = "/UserServlet")
public class UserServlet extends HttpServlet {
    private UserDao userDao = new UserDaoimpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html:charset=UTF-8");
        String action1 = request.getParameter("action");
        if (action1.equals("delete")) {
            int userid = Integer.valueOf(request.getParameter("userid"));
            userDao.DeleteUser(userDao.FindUser(userid));
            request.setAttribute("users", userDao.getUser());
            request.getRequestDispatcher("AdminPage/accountlist.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html:charset=UTF-8");
        String action = request.getParameter("action");
        if(action.equals("login")){//登录代码
            String username = request.getParameter("username");
            User user = userDao.queryUserByUsername(username);
            if(user!=null){
                String password = request.getParameter("password");
                if(user.getPassword().equals(password)){
                    Map<String,Object> resultmap = new HashMap<String,Object>();
                    resultmap.put("result","true");
                    resultmap.put("role",user.getType());
                    Gson gson = new Gson();
                    String resultJson = gson.toJson(resultmap);
                    response.getWriter().write(resultJson);
                }else{
                    Map<String,Object> resultmap = new HashMap<String,Object>();
                    resultmap.put("result","false");
                    Gson gson = new Gson();
                    String resultJson = gson.toJson(resultmap);
                    response.getWriter().write(resultJson);
                }
            }
        }else if(action.equals("register")){//注册
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            User user = new User(null,username,password,email,"user");
            userDao.saveUser(user);
            response.getWriter().write("true");
        }else if(action.equals("check")){//验证用户名是否可用
            String username = request.getParameter("username");
            User user = userDao.queryUserByUsername(username);
            if(user==null){
                response.getWriter().write("true");
            }else {
                response.getWriter().write("false");
            }
        }
    }
}
