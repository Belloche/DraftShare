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
    <div class="container">
        <h2>Login</h2>
        <form action="j_security_check" method="post">
            <label for="username">Username</label><br />
            <input type="text" id="username" name="j_username" /><br />
            <label for="password">Password</label><br />
            <input type="password" id="password" name="j_password" /><br />
            <br />
            <input type="submit" value="Log In" />
        </form>
    </div>
</body>
</html>
