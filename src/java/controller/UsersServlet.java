/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.UsersDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;   
import model.Users; 



/**
 *
 * @author caube
 */
@WebServlet(name = "UsersServlet", urlPatterns = {"/UsersServlet"})
public class UsersServlet extends HttpServlet {
        UsersDAO usersDAO  = new  UsersDAO();
        
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
         String command  = request.getParameter("command");  
                      String url ="";  
                       Users users  = new  Users();  
                      HttpSession session  = request.getSession();  
                      switch (command) {  
                          case "insert":  
                              users.setID(new java.util.Date().getTime());   
                               
                              users.setName(request.getParameter("name"));  
                              users.setEmail(request.getParameter("email"));  
                              users.setPass(request.getParameter("password"));
                              users.setRole(false);
                              usersDAO.insertUser(users);  
                              session.setAttribute("user", users); 
                               url = "/Index.jsp";
                                break;
                                
                            case "login":  
                                 users = usersDAO.login(request.getParameter("email"),request.getParameter("password"));  
                                 if (users != null) { 
                                         session.setAttribute("user", users);  
                                         url = "/Index.jsp";  
                                 }else{  
                                         session.setAttribute("error", "Email hoặc mật khẩu không đúng.!");  
                                         url = "/Login.jsp";  
                                   }  
                                break; 
                            case "loginAD": 
                                 users = usersDAO.loginAD(request.getParameter("email"),request.getParameter("password"));  
                                 if (users != null) { 
                                         session.setAttribute("user", users);  
                                         url = "/AdminCP/index.jsp";  
                                 }else{  
                                         session.setAttribute("error", "Chỉ Admin mới được quyền đăng nhập!");  
                                         url = "/AdminCP/login.jsp";  
                                   }  
                                break; 
                             case "insertAD":
                                 
                              users.setID(new java.util.Date().getTime());   
                              users.setName(request.getParameter("name"));  
                              users.setEmail(request.getParameter("email"));  
                              users.setPass(request.getParameter("password"));
                              users.setRole(true);
                              usersDAO.insertUser(users);  
                              session.setAttribute("user", users); 
                               url = "/AdminCP/index.jsp";
                                break;
                                   
                                  
                    }  
                      RequestDispatcher rd  = getServletContext().getRequestDispatcher(url);  
                      rd.forward(request, response);  
                  }  
    }

