<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>DraftShare - Home</title>
<c:import url="bootstrap.jsp" />
<link rel="stylesheet" href="master.css" />
<main>

<body class="bg-grey">
<c:import url="nav.jsp" />
    <c:if test="${not empty vote}">
        <div class="alert alert-success" align="center" role="alert">
            <h4 class="alert-heading">You gave ${success.getDraftName()} a vote ${vote}!</h4>
        </div>
    </c:if>

    <c:forEach var="draft" items="${drafts}">
        <div class="container bg-white">
            <h2>${draft.getDraftName()}</h2>
            <p>User: ${draft.getUser()}</p>
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
</main>
</html>
