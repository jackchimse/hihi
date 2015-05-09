<%-- 
    Document   : add
    Created on : Feb 7, 2015, 4:15:07 PM
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
        <form>
            Enter the information of Product
            <br>Cat id: <input type="text" name="txtCatID" value="" />
            <br>Product Name: <input type="text" name="txtProName" value="" />
            <br>Available: <input type="text" name="txtAvailable" value="" />
            <br>Price: <input type="text" name="txtPrice" value="" />
            <br><input type="submit" value="Save" name="btnSave" /> <input type="submit" value="Reset" name="btReset" />
        <%
            int n=0;
            String save=request.getParameter("btnSave");
            if(save!=null && save.length()>0){
                String catID=request.getParameter("txtCatID");
                String proName=request.getParameter("txtProName");
                String Available=request.getParameter("txtAvailable");
                String price=request.getParameter("txtPrice");
                if(isInt(catID)){
                    n++;
                }
                else{
        %>
        <p>Cat ID must be an integer number</p>
        <%
                }
                if(!proName.equals("")){
                    n++;
                }
                else{
        %>
        <p>Product cannot be empty</p>
        <%
                }
                if(!Available.equals("")){
                    n++;
                }else{
        %>
        <p>Available cannot be empty</p>
        <%
                }
                if(isPosiDouble(price)){
                    n++;
                }else{
        %>
        <p>Price must be greater than 0</p>
        <%
                }
                if(n==4){
                    response.sendRedirect("./show.jsp?txtCatID="+catID+"&txtProName="+proName+"&txtPrice="+price+"&txtAvailable="+Available);
                }
            }
            
        %>
        
        <%!
           Boolean isInt(String a){
               try{
                   int n=Integer.parseInt(a);
                   return true;
               }catch(Exception e){return false;}
           } 
        %>
        <%!
           Boolean isPosiDouble(String s){
               try{
                   double n=Double.parseDouble(s);
                   if(n>0){
                    return true;
                   }else return false;
               }catch(Exception e){return false;}
           }
        %>
        
        </form>
    </body>
</html>