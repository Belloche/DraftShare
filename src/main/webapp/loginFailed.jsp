<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 3/23/21
  Time: 9:59 AM
  Login Failure or access denied page
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Login Failed</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white" align="center">
        <h1>Login Failed</h1>
        <h3>Looks like your login was wrong, or maybe you don't have access to that page</h3>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
