<%-- 
    Document   : login
    Created on : Jul 2, 2017, 10:27:32 PM
    Author     : TUANLIEM-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/loginadminstyle.css" rel='stylesheet' type='text/css' /> 
    </head>
    <body>
       <div class="login">
		<div class="login-screen">
			<div class="app-title">
				<h1>ADMIN CONTROL PANEL</h1>
			</div>
                       
			<div class="login-form">
                            <div >
                            <form action="/Quan_Ly_Ban_Hang/UsersServlet" method="POST">
                                <%if(session.getAttribute("error")!=null){%>
                                 <div>  
                                        <p  style="color:red"><%=session.getAttribute("error")%></p>  
                                 </div>   
                                 <%}%> 
				<div class="control-group"> 	<input type="text" class="login-field" value="" placeholder="username" id="login-name" name="email">
					<label class="login-field-icon fui-user" for="login-name"></label>
					
				</div>
				<div class="control-group"> 
                                    <input type="password" name="password" class="login-field" value="" placeholder="password" id="login-pass">
					<label class="login-field-icon fui-lock" for="login-pass"></label>
					
				</div>			
                                
                                <input type="hidden" value="loginAD" name="command">
				<input class="btn btn-primary btn-large btn-block" type="submit" value="Đăng nhập"> 
				</form> 
			</div>
                      
		</div>
	</div>
    </body>
</html>
