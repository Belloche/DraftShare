<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/4/21
  Time: 2:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Change Password</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <c:if test="${incorrect.equals('true')}">
            <div class="alert alert-danger">
                <h4 class="alert-heading">Incorrect Password</h4>
                <p>Make sure your old password is correct</p>
            </div>
        </c:if>
        <form action="changePassword" method="post">
            <div class="form-group">
                <label for="oldPassword">Old Password</label>
                <input type="password" class="form-control" id="oldPassword" name="oldPassword" required />

                <label for="newPassword">New Password</label>
                <input type="password" pattern=".{8-32}" class="form-control" id="newPassword" name="newPassword" required />

                <button class="btn btn-success mb-2" type="submit" id="submitChange">Change Password</button>
            </div>
        </form>
    </div>
</body>
</html>