<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 3/23/21
  Time: 9:59 AM
  Login Form
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Login</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div align="center" class="container bg-white formDiv">
        <h1>Login</h1>
        <form action="j_security_check" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="j_username" aria-required="true" required />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="j_password" aria-required="true" required />
            </div>

            <button type="submit" class="btn btn-primary mb-2">Log In</button>
        </form>
        <p>Need to Create an Account? <a href="/DraftShare/register.jsp" class="blueLink">Register Here</a></p>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
