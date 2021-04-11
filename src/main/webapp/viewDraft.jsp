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
            <tr class="fullDraftRow">
                <td class="team">15. ${draft.getTeam15()}</td>
                <td class="player">${draft.getPick15()}</td>
                <td>${draft.getPos15()}</td>
                <td>${draft.getUni15()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">16. ${draft.getTeam16()}</td>
                <td class="player">${draft.getPick16()}</td>
                <td>${draft.getPos16()}</td>
                <td>${draft.getUni16()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">17. ${draft.getTeam17()}</td>
                <td class="player">${draft.getPick17()}</td>
                <td>${draft.getPos17()}</td>
                <td>${draft.getUni17()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">18. ${draft.getTeam18()}</td>
                <td class="player">${draft.getPick18()}</td>
                <td>${draft.getPos18()}</td>
                <td>${draft.getUni18()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">19. ${draft.getTeam19()}</td>
                <td class="player">${draft.getPick19()}</td>
                <td>${draft.getPos19()}</td>
                <td>${draft.getUni19()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">20. ${draft.getTeam20()}</td>
                <td class="player">${draft.getPick20()}</td>
                <td>${draft.getPos20()}</td>
                <td>${draft.getUni20()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">21. ${draft.getTeam21()}</td>
                <td class="player">${draft.getPick21()}</td>
                <td>${draft.getPos21()}</td>
                <td>${draft.getUni21()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">22. ${draft.getTeam22()}</td>
                <td class="player">${draft.getPick22()}</td>
                <td>${draft.getPos22()}</td>
                <td>${draft.getUni22()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">23. ${draft.getTeam23()}</td>
                <td class="player">${draft.getPick23()}</td>
                <td>${draft.getPos23()}</td>
                <td>${draft.getUni23()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">24. ${draft.getTeam24()}</td>
                <td class="player">${draft.getPick24()}</td>
                <td>${draft.getPos24()}</td>
                <td>${draft.getUni24()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">25. ${draft.getTeam25()}</td>
                <td class="player">${draft.getPick25()}</td>
                <td>${draft.getPos25()}</td>
                <td>${draft.getUni25()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">26. ${draft.getTeam26()}</td>
                <td class="player">${draft.getPick26()}</td>
                <td>${draft.getPos26()}</td>
                <td>${draft.getUni26()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">27. ${draft.getTeam27()}</td>
                <td class="player">${draft.getPick27()}</td>
                <td>${draft.getPos27()}</td>
                <td>${draft.getUni27()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">28. ${draft.getTeam28()}</td>
                <td class="player">${draft.getPick28()}</td>
                <td>${draft.getPos28()}</td>
                <td>${draft.getUni28()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">29. ${draft.getTeam29()}</td>
                <td class="player">${draft.getPick29()}</td>
                <td>${draft.getPos29()}</td>
                <td>${draft.getUni29()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">30. ${draft.getTeam30()}</td>
                <td class="player">${draft.getPick30()}</td>
                <td>${draft.getPos30()}</td>
                <td>${draft.getUni30()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">31. ${draft.getTeam31()}</td>
                <td class="player">${draft.getPick31()}</td>
                <td>${draft.getPos31()}</td>
                <td>${draft.getUni31()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">32. ${draft.getTeam32()}</td>
                <td class="player">${draft.getPick32()}</td>
                <td>${draft.getPos32()}</td>
                <td>${draft.getUni32()}</td>
            </tr>
        </table>
    </div>
</body>
</html>
