<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 5:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Delete Draft</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />

    <div class="container bg-white">
        <h1>Confirm Deletion</h1>
        <h2>${draft.getDraftName()}</h2>
        <h3 class="user">User: ${draft.getUser()}</h3>
        <h4>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></h4>
        <h4>Description</h4>
        <p>${draft.getDescription()}</p>

        <table class="thumbnail">
            <tr>
                <td>1.</td>
                <td><img src="images/${draft.getTeam1()}.png" alt="${draft.getTeam1()}"></td>
                <td class="player">${draft.getPick1()}</td>
            </tr>
            <c:if test="${not empty draft.getPick2()}">
                <tr>
                    <td>2.</td>
                    <td><img src="images/${draft.getTeam2()}.png" alt="${draft.getTeam2()}"></td>
                    <td class="player">${draft.getPick2()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick3()}">
                <tr>
                    <td>3.</td>
                    <td><img src="images/${draft.getTeam3()}.png" alt="${draft.getTeam3()}"></td>
                    <td class="player">${draft.getPick3()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick4()}">
                <tr>
                    <td>4.</td>
                    <td><img src="images/${draft.getTeam4()}.png" alt="${draft.getTeam4()}"></td>
                    <td class="player">${draft.getPick4()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick5()}">
                <tr>
                    <td>5.</td>
                    <td><img src="images/${draft.getTeam5()}.png" alt="${draft.getTeam5()}"></td>
                    <td class="player">${draft.getPick5()}</td>
                </tr>
            </c:if>
        </table>
        <br />
        <a href="deleteDraft?id=${draft.getId()}"><button class="btn btn-danger m-2">Delete Draft</button></a>
    </div>

    <c:import url="footer.jsp" />
</body>
</html>
