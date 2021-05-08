<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 5/6/21
  Time: 5:12 PM
  Logout Success Page with invalidate tag to logout when the page opens
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Logged Out</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />

    <div class="container bg-white" align="center">
        <% session.invalidate(); %>
        <h1>You are logged out</h1>
        <p>Click <a href="/DraftShare/home">here</a> to go back to the homepage</p>
    </div>

    <c:import url="footer.jsp" />
    </body>
</main>
</html>
