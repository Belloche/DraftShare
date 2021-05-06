<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/23/21
  Time: 7:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Register</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div action="registerUser" class="container bg-white">
        <h2>Create an Account</h2>
        <form action="registerUser" method="post">
            <div class="form-group">
                <label for="username">Username (Between 8 and 16 Letters or Numbers Long)</label>
                <input type="text" pattern="[\w.-]{8,16}" class="form-control" id="username" name="username" required />
            </div>
            <div class="form-group">
                <label for="password">Password (Between 8 and 32 Characters Long</label>
                <input type="password" pattern=".{8-32}" class="form-control" id="password" name="password" required />
            </div>

            <button type="submit" id="register" class="btn btn-primary mb-2">Register</button>
        </form>
    </div>
    <c:import url="footer.jsp" />
</body>
</html>
