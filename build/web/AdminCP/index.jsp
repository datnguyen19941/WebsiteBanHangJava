<%-- 
    Document   : index
    Created on : Jul 2, 2017, 5:38:46 PM
    Author     : TUANLIEM-PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN CONTROL PANEL</title>
       <c:set var="root" value="${pageContext.request.contextPath}"/> 
       <link href="${root}/css/admincp.css" rel='stylesheet' type='text/css'/> 
       <link href="${root}/css/menu.css" rel='stylesheet' type='text/css'/> 
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="wrapper">
            <jsp:include page="menu.jsp"></jsp:include>
            <jsp:include page="content.jsp"></jsp:include>
          <div class="clear"></div>  
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>
