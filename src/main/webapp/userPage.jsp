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

    <div class="container bg-white">
        <p>Username: ${user.getUsername()}</p>
        <p>Password: ${user.getPassword()}</p>
        <a href="/DraftShare_war/changePassword.jsp" class="link-primary">Change Password</a>
    </div>

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
        </div>
    </c:forEach>
</body>
</html>
