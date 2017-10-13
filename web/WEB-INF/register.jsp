<%-- 
    Document   : register
    Created on : Oct 12, 2017, 9:39:33 AM
    Author     : 727525
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        <form action="ShoppingList?action=register" method="POST">
            Username:<input type="text" name="usernameInput" />
            <input type="submit" name="Register" />
        </form>
        <br>
        ${errorMessage}
    </body>
</html>
