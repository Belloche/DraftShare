<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 2/26/21
  Time: 5:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Draft</title>
    <link rel="stylesheet" href="master.css" />
</head>
<body>
<p>Id: ${draft.getId()}</p>
    <c:import url="nav.jsp" />
    <div class="draft container">
        <h1>${draft.getDraftName()}</h1>
        <h3 class="user">User: ${draft.getUser()}</h3>
        <h4>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></h4>
        <table class="fullDraft">
            <tr class="fullDraftRow">
                <th>Team</th>
                <th>Player</th>
                <th>Position</th>
                <th>College</th>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">1. ${draft.getTeam1()}</td>
                <td class="player">${draft.getPick1()}</td>
                <td>${draft.getPos1()}</td>
                <td>${draft.getUni1()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">2. ${draft.getTeam2()}</td>
                <td class="player">${draft.getPick2()}</td>
                <td>${draft.getPos2()}</td>
                <td>${draft.getUni2()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">3. ${draft.getTeam3()}</td>
                <td class="player">${draft.getPick3()}</td>
                <td>${draft.getPos3()}</td>
                <td>${draft.getUni3()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">4. ${draft.getTeam4()}</td>
                <td class="player">${draft.getPick4()}</td>
                <td>${draft.getPos4()}</td>
                <td>${draft.getUni4()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">5. ${draft.getTeam5()}</td>
                <td class="player">${draft.getPick5()}</td>
                <td>${draft.getPos5()}</td>
                <td>${draft.getUni5()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">6. ${draft.getTeam6()}</td>
                <td class="player">${draft.getPick6()}</td>
                <td>${draft.getPos6()}</td>
                <td>${draft.getUni6()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">7. ${draft.getTeam7()}</td>
                <td class="player">${draft.getPick7()}</td>
                <td>${draft.getPos7()}</td>
                <td>${draft.getUni7()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">8. ${draft.getTeam8()}</td>
                <td class="player">${draft.getPick8()}</td>
                <td>${draft.getPos8()}</td>
                <td>${draft.getUni8()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">9. ${draft.getTeam9()}</td>
                <td class="player">${draft.getPick9()}</td>
                <td>${draft.getPos9()}</td>
                <td>${draft.getUni9()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">10. ${draft.getTeam10()}</td>
                <td class="player">${draft.getPick10()}</td>
                <td>${draft.getPos10()}</td>
                <td>${draft.getUni10()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">11. ${draft.getTeam11()}</td>
                <td class="player">${draft.getPick11()}</td>
                <td>${draft.getPos11()}</td>
                <td>${draft.getUni11()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">12. ${draft.getTeam12()}</td>
                <td class="player">${draft.getPick12()}</td>
                <td>${draft.getPos12()}</td>
                <td>${draft.getUni12()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">13. ${draft.getTeam13()}</td>
                <td class="player">${draft.getPick13()}</td>
                <td>${draft.getPos13()}</td>
                <td>${draft.getUni13()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">14. ${draft.getTeam14()}</td>
                <td class="player">${draft.getPick14()}</td>
                <td>${draft.getPos14()}</td>
                <td>${draft.getUni14()}</td>
            </tr>
        </table>
    </div>
</body>
</html>
