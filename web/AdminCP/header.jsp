<%-- 
    Document   : header
    Created on : Jul 2, 2017, 5:29:24 PM
    Author     : TUANLIEM-PC
--%>

<%@page import="model.Users"%>
<%@page import="dao.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%             
            CategoryDAO categoryDAO = new CategoryDAO(); 
            Users users = null ;
            if(session.getAttribute("user") !=null)
            {
                users = (Users)session.getAttribute("user");
            }
        %> 
        <div id="header">
	<div class="inHeader">
		<div class="mosAdmin">
		<%if(users!=null)
                                                {
                                                    %> <li >Xin Chào Admin <a href=""><%=users.getEmail()%></a> </li>
                                                    <%}%>>
		  <a href="/Quan_Ly_Ban_Hang/AdminCP/addAdmin.jsp">Thêm Admin</a>
		</div>
	<div class="clear"></div>
	</div>
    </body>
</html>
