<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 3/23/21
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Login</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h2>Login</h2>
        <form action="j_security_check" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" class="form-control" id="username" name="j_username" />
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="j_password" />
            </div>

            <button type="submit" class="btn btn-success mb-2">Log In</button>
        </form>
        <p>Need to Create an Account? <a href="/DraftShare_war/register.jsp" class="link-primary">Register Here</a></p>
    </div>
</body>
</html>
