<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<title>DraftShare - Home</title>
<c:import url="bootstrap.jsp" />
<link rel="stylesheet" href="master.css" />
<main>
    <body class="bg-grey">
    <c:import url="nav.jsp" />
        <c:if test="${not empty message}">
            <div class="alert alert-success" align="center" role="alert">
                <h4 class="alert-heading">Success!</h4>
                <p>${message}</p>
            </div>
        </c:if>
        <div class="mainTitle mt-2 bg-white container">
            <h1>Home</h1>
            <h2>View All Drafts</h2>
        </div>


        <c:forEach var="draft" items="${drafts}">
            <div class="container bg-white">
                <h2>${draft.getDraftName()}</h2>
                <p>User: ${draft.getUser()}</p>
                <table class="thumbnail">
                    <c:if test="${not empty draft.getPick1()}">
                        <tr>
                            <td>1.</td>
                            <td><img src="images/${draft.getTeam1()}.png" alt="${draft.getTeam1()}"></td>
                            <td class="player">${draft.getPick1()}</td>
                        </tr>
                    </c:if>
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
                </table>
                <p>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></p>
                <a href="viewDraft?draft=${draft.getId()}" class="blueLink">View Full Draft</a>
            </div>
        </c:forEach>
    <c:import url="footer.jsp" />
    </body>

</main>
</html>
