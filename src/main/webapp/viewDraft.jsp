<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 2/26/21
  Time: 5:19 PM
  Page with full draft readout
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>View Draft</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />

    <div class="draft container bg-white draftTable">
        <div align="center">
            <h1>${draft.getDraftName()}</h1>
            <h3 class="user">User: ${draft.getUser()}</h3>
            <h4>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></h4>
            <h4>Description</h4>
            <p>${draft.getDescription()}</p>
            <c:if test="${!not empty author}">
                <div class="row justify-content-center">
                    <a href="/DraftShare/vote?id=${draft.getId()}&vote=up"><button class="btn btn-success mr-1">Upvote</button></a>
                    <a href="/DraftShare/vote?id=${draft.getId()}&vote=down"><button class="btn btn-danger ml-1">Downvote</button></a>
                </div>
            </c:if>
        </div>

        <table class="fullDraft mt-3">
            <tr class="fullDraftRow">
                <th>#</th>
                <th>Team</th>
                <th>Player</th>
                <th>Position</th>
                <th>College</th>
            </tr>

            <c:if test="${not empty draft.getPick1()}">
                <tr class="fullDraftRow">
                    <td class="team">1.</td>
                    <td><img src="images/${draft.getTeam1()}.png" alt="${draft.getTeam1()} logo" /></td>
                    <td class="player">${draft.getPick1()}</td>
                    <td>${draft.getPos1()}</td>
                    <td>${draft.getUni1()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick2()}">
                <tr class="fullDraftRow">
                    <td class="team">2.</td>
                    <td><img src="images/${draft.getTeam2()}.png" alt="${draft.getTeam2()} logo" /></td>
                    <td class="player">${draft.getPick2()}</td>
                    <td>${draft.getPos2()}</td>
                    <td>${draft.getUni2()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick3()}">
                <tr class="fullDraftRow">
                    <td class="team">3.</td>
                    <td><img src="images/${draft.getTeam3()}.png" alt="${draft.getTeam3()} logo" /></td>
                    <td class="player">${draft.getPick3()}</td>
                    <td>${draft.getPos3()}</td>
                    <td>${draft.getUni3()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick4()}">
                <tr class="fullDraftRow">
                    <td class="team">4.</td>
                    <td><img src="images/${draft.getTeam4()}.png" alt="${draft.getTeam4()} logo" /></td>
                    <td class="player">${draft.getPick4()}</td>
                    <td>${draft.getPos4()}</td>
                    <td>${draft.getUni4()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick5()}">
                <tr class="fullDraftRow">
                    <td class="team">5.</td>
                    <td><img src="images/${draft.getTeam5()}.png" alt="${draft.getTeam5()} logo" /></td>
                    <td class="player">${draft.getPick5()}</td>
                    <td>${draft.getPos5()}</td>
                    <td>${draft.getUni5()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick6()}">
                <tr class="fullDraftRow">
                    <td class="team">6.</td>
                    <td><img src="images/${draft.getTeam6()}.png" alt="${draft.getTeam6()} logo" /></td>
                    <td class="player">${draft.getPick6()}</td>
                    <td>${draft.getPos6()}</td>
                    <td>${draft.getUni6()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick7()}">
                <tr class="fullDraftRow">
                    <td class="team">7.</td>
                    <td><img src="images/${draft.getTeam7()}.png" alt="${draft.getTeam7()} logo" /></td>
                    <td class="player">${draft.getPick7()}</td>
                    <td>${draft.getPos7()}</td>
                    <td>${draft.getUni7()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick8()}">
                <tr class="fullDraftRow">
                    <td class="team">8.</td>
                    <td><img src="images/${draft.getTeam8()}.png" alt="${draft.getTeam8()} logo" /></td>
                    <td class="player">${draft.getPick8()}</td>
                    <td>${draft.getPos8()}</td>
                    <td>${draft.getUni8()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick9()}">
                <tr class="fullDraftRow">
                    <td class="team">9.</td>
                    <td><img src="images/${draft.getTeam9()}.png" alt="${draft.getTeam9()} logo" /></td>
                    <td class="player">${draft.getPick9()}</td>
                    <td>${draft.getPos9()}</td>
                    <td>${draft.getUni9()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick10()}">
                <tr class="fullDraftRow">
                    <td class="team">10.</td>
                    <td><img src="images/${draft.getTeam10()}.png" alt="${draft.getTeam10()} logo" /></td>
                    <td class="player">${draft.getPick10()}</td>
                    <td>${draft.getPos10()}</td>
                    <td>${draft.getUni10()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick11()}">
                <tr class="fullDraftRow">
                    <td class="team">11.</td>
                    <td><img src="images/${draft.getTeam11()}.png" alt="${draft.getTeam11()} logo" /></td>
                    <td class="player">${draft.getPick11()}</td>
                    <td>${draft.getPos11()}</td>
                    <td>${draft.getUni11()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick12()}">
                <tr class="fullDraftRow">
                    <td class="team">12.</td>
                    <td><img src="images/${draft.getTeam12()}.png" alt="${draft.getTeam12()} logo" /></td>
                    <td class="player">${draft.getPick12()}</td>
                    <td>${draft.getPos12()}</td>
                    <td>${draft.getUni12()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick13()}">
                <tr class="fullDraftRow">
                    <td class="team">13.</td>
                    <td><img src="images/${draft.getTeam13()}.png" alt="${draft.getTeam13()} logo" /></td>
                    <td class="player">${draft.getPick13()}</td>
                    <td>${draft.getPos13()}</td>
                    <td>${draft.getUni13()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick14()}">
                <tr class="fullDraftRow">
                    <td class="team">14.</td>
                    <td><img src="images/${draft.getTeam14()}.png" alt="${draft.getTeam14()} logo" /></td>
                    <td class="player">${draft.getPick14()}</td>
                    <td>${draft.getPos14()}</td>
                    <td>${draft.getUni14()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick15()}">
                <tr class="fullDraftRow">
                    <td class="team">15.</td>
                    <td><img src="images/${draft.getTeam15()}.png" alt="${draft.getTeam15()} logo" /></td>
                    <td class="player">${draft.getPick15()}</td>
                    <td>${draft.getPos15()}</td>
                    <td>${draft.getUni15()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick16()}">
                <tr class="fullDraftRow">
                    <td class="team">16.</td>
                    <td><img src="images/${draft.getTeam16()}.png" alt="${draft.getTeam16()} logo" /></td>
                    <td class="player">${draft.getPick16()}</td>
                    <td>${draft.getPos16()}</td>
                    <td>${draft.getUni16()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick17()}">
                <tr class="fullDraftRow">
                    <td class="team">17.</td>
                    <td><img src="images/${draft.getTeam17()}.png" alt="${draft.getTeam17()} logo" /></td>
                    <td class="player">${draft.getPick17()}</td>
                    <td>${draft.getPos17()}</td>
                    <td>${draft.getUni17()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick18()}">
                <tr class="fullDraftRow">
                    <td class="team">18.</td>
                    <td><img src="images/${draft.getTeam18()}.png" alt="${draft.getTeam18()} logo" /></td>
                    <td class="player">${draft.getPick18()}</td>
                    <td>${draft.getPos18()}</td>
                    <td>${draft.getUni18()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick19()}">
                <tr class="fullDraftRow">
                    <td class="team">19.</td>
                    <td><img src="images/${draft.getTeam19()}.png" alt="${draft.getTeam19()} logo" /></td>
                    <td class="player">${draft.getPick19()}</td>
                    <td>${draft.getPos19()}</td>
                    <td>${draft.getUni19()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick20()}">
                <tr class="fullDraftRow">
                    <td class="team">20.</td>
                    <td><img src="images/${draft.getTeam20()}.png" alt="${draft.getTeam20()} logo" /></td>
                    <td class="player">${draft.getPick20()}</td>
                    <td>${draft.getPos20()}</td>
                    <td>${draft.getUni20()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick21()}">
                <tr class="fullDraftRow">
                    <td class="team">21.</td>
                    <td><img src="images/${draft.getTeam21()}.png" alt="${draft.getTeam21()} logo" /></td>
                    <td class="player">${draft.getPick21()}</td>
                    <td>${draft.getPos21()}</td>
                    <td>${draft.getUni21()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick22()}">
                <tr class="fullDraftRow">
                    <td class="team">22.</td>
                    <td><img src="images/${draft.getTeam22()}.png" alt="${draft.getTeam22()} logo" /></td>
                    <td class="player">${draft.getPick22()}</td>
                    <td>${draft.getPos22()}</td>
                    <td>${draft.getUni22()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick23()}">
                <tr class="fullDraftRow">
                    <td class="team">23.</td>
                    <td><img src="images/${draft.getTeam23()}.png" alt="${draft.getTeam23()} logo" /></td>
                    <td class="player">${draft.getPick23()}</td>
                    <td>${draft.getPos23()}</td>
                    <td>${draft.getUni23()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick24()}">
                <tr class="fullDraftRow">
                    <td class="team">24.</td>
                    <td><img src="images/${draft.getTeam24()}.png" alt="${draft.getTeam24()} logo" /></td>
                    <td class="player">${draft.getPick24()}</td>
                    <td>${draft.getPos24()}</td>
                    <td>${draft.getUni24()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick25()}">
                <tr class="fullDraftRow">
                    <td class="team">25.</td>
                    <td><img src="images/${draft.getTeam25()}.png" alt="${draft.getTeam25()} logo" /></td>
                    <td class="player">${draft.getPick25()}</td>
                    <td>${draft.getPos25()}</td>
                    <td>${draft.getUni25()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick26()}">
                <tr class="fullDraftRow">
                    <td class="team">26.</td>
                    <td><img src="images/${draft.getTeam26()}.png" alt="${draft.getTeam26()} logo" /></td>
                    <td class="player">${draft.getPick26()}</td>
                    <td>${draft.getPos26()}</td>
                    <td>${draft.getUni26()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick27()}">
                <tr class="fullDraftRow">
                    <td class="team">27.</td>
                    <td><img src="images/${draft.getTeam27()}.png" alt="${draft.getTeam27()} logo" /></td>
                    <td class="player">${draft.getPick27()}</td>
                    <td>${draft.getPos27()}</td>
                    <td>${draft.getUni27()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick28()}">
                <tr class="fullDraftRow">
                    <td class="team">28.</td>
                    <td><img src="images/${draft.getTeam28()}.png" alt="${draft.getTeam28()} logo" /></td>
                    <td class="player">${draft.getPick28()}</td>
                    <td>${draft.getPos28()}</td>
                    <td>${draft.getUni28()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick29()}">
                <tr class="fullDraftRow">
                    <td class="team">29.</td>
                    <td><img src="images/${draft.getTeam29()}.png" alt="${draft.getTeam29()} logo" /></td>
                    <td class="player">${draft.getPick29()}</td>
                    <td>${draft.getPos29()}</td>
                    <td>${draft.getUni29()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick30()}">
                <tr class="fullDraftRow">
                    <td class="team">30.</td>
                    <td><img src="images/${draft.getTeam30()}.png" alt="${draft.getTeam30()} logo" /></td>
                    <td class="player">${draft.getPick30()}</td>
                    <td>${draft.getPos30()}</td>
                    <td>${draft.getUni30()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick31()}">
                <tr class="fullDraftRow">
                    <td class="team">31.</td>
                    <td><img src="images/${draft.getTeam31()}.png" alt="${draft.getTeam31()} logo" /></td>
                    <td class="player">${draft.getPick31()}</td>
                    <td>${draft.getPos31()}</td>
                    <td>${draft.getUni31()}</td>
                </tr>
            </c:if>
            <c:if test="${not empty draft.getPick32()}">
                <tr class="fullDraftRow">
                    <td class="team">32.</td>
                    <td><img src="images/${draft.getTeam32()}.png" alt="${draft.getTeam32()} logo" /></td>
                    <td class="player">${draft.getPick32()}</td>
                    <td>${draft.getPos32()}</td>
                    <td>${draft.getUni32()}</td>
                </tr>
            </c:if>
        </table>
        <a href="#"><button class="btn btn-primary mt-2">Back to Top</button></a>
        <a href="/DraftShare/home"><button class="btn btn-primary mt-2">Back to Home</button></a>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
