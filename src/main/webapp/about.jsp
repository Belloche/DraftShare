<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 5/4/21
  Time: 12:20 PM
  About Page with project description
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - About</title>
    <c:import url="bootstrap.jsp" />
    <link rel="stylesheet" href="master.css" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container bg-white">
        <h1>Welcome to DraftShare!</h1>
        <p>DraftShare is a tool for creating and sharing your NFL mock drafts. Create an account to get started, and then view and share drafts with your friends! Vote for drafts you like or don't like, make trades, you can even have your own friends get drafted.</p>
        <a href="/DraftSHare_war/home"><button class="btn btn-primary m-2">Back to Home</button></a>
    </div>
    <c:import url="footer.jsp" />
</body>
</html>
