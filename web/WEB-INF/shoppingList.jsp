<%-- 
    Document   : shoppingList
    Created on : Oct 12, 2017, 9:45:08 AM
    Author     : 727525
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1>
        Hello, ${username} <a href="ShoppingList?action=logout">Logout</a>
        <h2>List</h2>
        <form action="ShoppingList?action=add" method="POST">
            <input type="text" name="item" />
            <input type="submit" value="Add Item" />
        </form>
        
        <form action="ShoppingList?action=delete" method="POST">
            <c:forEach var="item" items="${sessionScope.itemList}">
                <input type="radio" name="items" value="${item}"><label><c:out value="${item}"/></label><br>
            </c:forEach>
                    <c:if test="${not empty sessionScope.itemList}">
                <input type="submit" value="Delete">
            </c:if>
        </form>
    </body>
</html>
