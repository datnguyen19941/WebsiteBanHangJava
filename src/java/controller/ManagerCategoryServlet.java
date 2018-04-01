/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.CategoryDAO;
import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Category;

/**
 *
 * @author TUANLIEM-PC
 */
public class ManagerCategoryServlet extends HttpServlet {

    CategoryDAO categoryDAO = new CategoryDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String category_id = request.getParameter("category_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    categoryDAO.delete(Long.parseLong(category_id));
                    url = "/AdminCP/manager_category.jsp";
                    break;
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String tenDanhMuc = request.getParameter("tendanhmuc");
        String url = "", error = "";
        Category category = new Category();
        if (tenDanhMuc.equals("")) {
            error = "Vui lòng nhập tên danh mục!";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                         
                        category.setCategoryName(tenDanhMuc);
                        
                        categoryDAO.insert(category);
                       // categoryDAO.insert(new Category(new Date().getTime(), tenDanhMuc));
                        url = "/AdminCP/manager_category.jsp";
                        break;
                    case "update":
                        categoryDAO.update(new Category(Long.parseLong(request.getParameter("category_id")),
                                tenDanhMuc));
                        url = "/AdminCP/manager_category.jsp";
                        break;
                }
            } else {
                url = "/AdminCP/insert_category.jsp";
            }
        } catch (Exception e) {
        }
        RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
        rd.forward(request, response);
    }


    
    
    
}
