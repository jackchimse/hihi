<%-- 
    Document   : show
    Created on : Feb 7, 2015, 5:12:50 PM
    Author     : Vu Hoang Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>You have sent me:</h1>
        <%
            String catID=request.getParameter("txtCatID");
            String proName=request.getParameter("txtProName");
            String price=request.getParameter("txtPrice");
            String avai=request.getParameter("txtAvailable");
        %>
        <br>Catid: <%=catID%>
        <br>Product name: <%=proName%>
        <br>Price: <%=price%>
        <br>Available: <%=avai%>
        <br><input type="submit" value="Home" name="btnHome" onclick="window.location='./add.jsp'"
    </body>
</html>
