<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/16/21
  Time: 10:50 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Success!</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white userDiv" align="center">
        <h1>Success!</h1>
        <p>Your Draft was created!</p>
        <p>If you would like to view your draft click <a href="viewDraft?draft=${id}" class="blueLink">Here</a></p>
        <p>To go back to the homepage click <a href="/DraftShare/home" class="blueLink">Here</a></p>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
