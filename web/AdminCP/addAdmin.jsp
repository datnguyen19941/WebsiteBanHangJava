<%-- 
    Document   : addAdmin
    Created on : Jul 4, 2017, 11:29:48 PM
    Author     : caube
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Admin </title>
        <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/loginadminstyle.css" rel='stylesheet' type='text/css' /> 
        
    </head>
    <body>
         <jsp:include page="header.jsp"></jsp:include>
          <div class="container">
		<div class="account">
			<h2 class="account-in">THÊM TÀI KHOẢN ADMIN</h2>
                        <form action="/Quan_Ly_Ban_Hang/UsersServlet" method="POST">
				
				<div>
					<span>Họ và Tên (*)</span>
					<input type="text" required="yes" maxlength="50" name="name">
				</div> 	
				<div>			
                                    <span> Email(*)</span>
					<input type="text" maxlength="50" name="email" id="email">
                                        <span id="user-result"></span>
                                        
				</div>			
				<div> 	
					<span>Password(*)</span>
					<input type="password" required="yes" maxlength="50" name="password">
				</div>
				
                                        <input type="hidden" value="insertAD" name ="command"> 
					<input type="submit" value="Thêm Admin"> 
				</form>
		</div>
	</div>
		
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
