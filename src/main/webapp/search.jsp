<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 5/6/21
  Time: 2:45 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Search</title>
    <link rel="stylesheet" href="master.css">
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />

    <div class="container bg-white searchDiv">
        <h1>Mock Draft Search</h1>
        <form action="/DraftShare/search" class="searchForm m-2">
            <div class="form-group">
                <label for="searchTerm">Search</label>
                <input type="text" name="searchTerm" id="searchTerm" class="form-control" value="${term}" required />
            </div>
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label">Search Types</legend>
                    <div class="col-sm-5">
                        <div class="form-check">
                            <input type="radio" name="searchType" id="typeName" class="form-check-input" value="draftName" ${draftNameSelected} required />
                            <label for="typeName" class="form-check-label">Draft Name</label>
                        </div>
                        <div class="form-check">
                            <input type="radio" name="searchType" id="typeUser" class="form-check-input" value="user" ${userNameSelected} />
                            <label for="typeUser" class="form-check-label">User Name</label>
                        </div>
                    </div>
                </div>
            </fieldset>
            <h3>For Accurate Results</h3>
            <p>Please enter the exact name of the draft or user you are searching for</p>

            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Search</button>
                </div>
            </div>
        </form>
    </div>

    <c:choose>
        <c:when test="${not empty emptySearch}">
            <div class="container bg-white">
                <h2>Search Results</h2>
                <p>Search results will display here</p>
            </div>
        </c:when>
        <c:when test="${not empty emptyResults}">
            <div class="container bg-white">
                <h3>No results found</h3>
            </div>
        </c:when>
        <c:when test="${!not empty emptySearch}">
            <div class="container bg-white pb-3">
                <h2>Search Results</h2>
                <c:forEach var="draft" items="${results}">
                    <div class="container bg-white searchThumbnail">
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
                        <a href="viewDraft?draft=${draft.getId()}">View Full Draft</a>
                    </div>
                </c:forEach>
            </div>
        </c:when>
    </c:choose>

    <c:import url="footer.jsp" />
    </body>
</main>
</html>
