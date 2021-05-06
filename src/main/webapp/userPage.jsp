<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/27/21
  Time: 3:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - User</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />

    <c:if test="${not empty deleted}">
        <div class="alert alert-danger">
            <h2 class="alert-heading">Success!</h2>
            <p>You successfully deleted your draft</p>
        </div>
    </c:if>

    <div class="container bg-white userDiv">
        <h1>Welcome Back, ${user.getUsername()}!</h1>
        <h3>Your Credentials</h3>
        <p>Username: <b>${user.getUsername()}</b></p>
        <p>Password: <b>${user.getPassword()}</b></p>
        <a href="/DraftShare_war/changePassword.jsp" class="link-primary">Change Password</a>
        <br />
        <a href="/DraftShare_war/logOut.jsp"><button class="btn btn-danger mb-2">Log Out</button></a>
    </div>

    <c:if test="${!not empty userDrafts}">
        <div class="container bg-white emptyUserDrafts">
            <h3>No Drafts Yet</h3>
            <p>Create some drafts and they'll show up here</p>
        </div>
    </c:if>

    <c:forEach var="draft" items="${userDrafts}">
        <div class="container bg-white">
            <h2>${draft.getDraftName()}</h2>
            <p>User: ${draft.getUser()}</p>
            <p>Description: ${draft.getDescription()}</p>
            <table class="thumbnail">
                <tr>
                    <td>1.</td>
                    <td><img src="${draft.getLogo(draft.getTeam1())}" alt="${draft.getTeam1()}"></td>
                    <td class="player">${draft.getPick1()}</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td><img src="${draft.getLogo(draft.getTeam2())}" alt="${draft.getTeam2()}"></td>
                    <td class="player">${draft.getPick2()}</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td><img src="${draft.getLogo(draft.getTeam3())}" alt="${draft.getTeam3()}"></td>
                    <td class="player">${draft.getPick3()}</td>
                </tr>
            </table>
            <p>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></p>
            <a href="viewDraft?draft=${draft.getId()}">View Full Draft</a>
            <br />
            <a href="confirm?id=${draft.getId()}"><button class="btn btn-danger m-2">Delete Draft</button></a>
        </div>
    </c:forEach>
    <c:import url="footer.jsp" />
</body>
</html>
