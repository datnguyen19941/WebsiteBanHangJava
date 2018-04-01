/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;
import model.Users;

/**
 *
 * @author TUANLIEM-PC
 */
public class ManagerProductServlet extends HttpServlet {

    ProductDAO productDAO = new ProductDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        String product_id = request.getParameter("product_id");
        String url = "";
        try {
            switch (command) {
                case "delete":
                    productDAO.delete(Long.parseLong(product_id));
                    url = "/AdminCP/manager_product.jsp";
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
       
        long madanhmuc = Long.parseLong(request.getParameter("danhmuc"));
        String tenSanPham = request.getParameter("tensanpham");
        double giaban = Double.parseDouble(request.getParameter("giaban"));
        String thongtin = request.getParameter("noiDung");
        String hinhanh = request.getParameter("hinhanh");
        String url = "", error = "";
       Product product = new Product();
        if (tenSanPham.equals("")) {
            error = "Vui lòng nhập tên sản phẩm!";
            request.setAttribute("error", error);
        }
        try {
            if (error.length() == 0) {
                switch (command) {
                    case "insert":
                       
                        product.setCategoryID(madanhmuc);
                        product.setProductName(tenSanPham);
                        product.setProductImage(hinhanh);
                        product.setProductPrice(giaban);
                        product.setProductDescription(thongtin);
                        productDAO.insert(product);
                        url = "/AdminCP/manager_product.jsp";
                        break;
                    case "update":
                        productDAO.update(new Product(Long.parseLong(request.getParameter("product_id")),
                                tenSanPham,hinhanh, giaban, thongtin));
                        url = "/AdminCP/manager_product.jsp";
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
