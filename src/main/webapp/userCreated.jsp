<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/25/21
  Time: 10:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Register Success!</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h2>Success!</h2>
        <p>Your Account has been created!</p>
        <p>Your username is: ${user.getUsername()}</p>
        <p>Your password is: ${user.getPassword()}</p>
        <p>To see or change your credentials click <a href="#">Here</a></p>
        <p>To go back to the homepage click <a href="/home">Here</a></p>
    </div>
    <c:import url="footer.jsp" />
</body>
</html>
