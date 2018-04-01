/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author caube
 */
public class CartServlet extends HttpServlet {
    private final ProductDAO productDAO = new ProductDAO();
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            doPost(request,response);
       
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String productID = request.getParameter("productID");
        Cart cart = (Cart) session.getAttribute("cart");
        try
        {
            Long idProduct = Long.parseLong(productID);
            Product product =  productDAO.getProduct(idProduct);
            switch(command)
            {
                case "plus":
                    if(cart.getCartItems().containsKey(idProduct))
                    {
                        cart.plusToCart(idProduct, new Item(product,cart.getCartItems().get(idProduct).getQuantity()));
                        
                    }else
                    {
                        cart.plusToCart(idProduct,new Item(product,1));
                    }
                    break;
                case "remove":
                    cart.removeToCart(idProduct);
                    break;
            }
        } catch(Exception e){
            e.printStackTrace();
            response.sendRedirect("/Quan_Ly_Ban_Hang/Index.jsp");
        }
        
        session.setAttribute("cart", cart);
        response.sendRedirect("/Quan_Ly_Ban_Hang/Index.jsp");
        }
       
    }

  
    


