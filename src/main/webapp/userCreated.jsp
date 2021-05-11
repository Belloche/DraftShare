<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 4/25/21
  Time: 10:29 AM
  Account creation success page
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Register Success</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white userDiv" align="center">
        <h1>Success!</h1>
        <p>Your Account has been created!</p>
        <p>Your username is: <b>${user.getUsername()}</b></p>
        <p>Your password is: <b>${user.getPassword()}</b></p>
        <p>To log in click <a href="/DraftShare/userPage">Here</a></p>
        <p>To go back to the homepage click <a href="/DraftShare/home">Here</a></p>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>