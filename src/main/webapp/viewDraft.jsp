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
    <c:import url="bootstrap.jsp" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="draft container bg-white">
        <h1>${draft.getDraftName()}</h1>
        <h3 class="user">User: ${draft.getUser()}</h3>
        <h4>Votes: <span class="upvoteCount">${draft.getUpvotes()}</span> | <span class="downvoteCount">${draft.getDownvotes()}</span></h4>
        <h4>Description</h4>
        <p>${draft.getDescription()}</p>
        <table class="fullDraft">
            <tr class="fullDraftRow">
                <th>#</th>
                <th>Team</th>
                <th>Player</th>
                <th>Position</th>
                <th>College</th>
            </tr>

            <tr class="fullDraftRow">
                <td class="team">1.</td>
                <td><img src="${draft.getLogo(draft.getTeam1())}" alt="${draft.getTeam1()} logo" /></td>
                <td class="player">${draft.getPick1()}</td>
                <td>${draft.getPos1()}</td>
                <td>${draft.getUni1()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">2.</td>
                <td><img src="${draft.getLogo(draft.getTeam2())}" alt="${draft.getTeam2()} logo" /></td>
                <td class="player">${draft.getPick2()}</td>
                <td>${draft.getPos2()}</td>
                <td>${draft.getUni2()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">3.</td>
                <td><img src="${draft.getLogo(draft.getTeam3())}" alt="${draft.getTeam3()} logo" /></td>
                <td class="player">${draft.getPick3()}</td>
                <td>${draft.getPos3()}</td>
                <td>${draft.getUni3()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">4.</td>
                <td><img src="${draft.getLogo(draft.getTeam4())}" alt="${draft.getTeam4()} logo" /></td>
                <td class="player">${draft.getPick4()}</td>
                <td>${draft.getPos4()}</td>
                <td>${draft.getUni4()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">5.</td>
                <td><img src="${draft.getLogo(draft.getTeam5())}" alt="${draft.getTeam5()} logo" /></td>
                <td class="player">${draft.getPick5()}</td>
                <td>${draft.getPos5()}</td>
                <td>${draft.getUni5()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">6.</td>
                <td><img src="${draft.getLogo(draft.getTeam6())}" alt="${draft.getTeam6()} logo" /></td>
                <td class="player">${draft.getPick6()}</td>
                <td>${draft.getPos6()}</td>
                <td>${draft.getUni6()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">7.</td>
                <td><img src="${draft.getLogo(draft.getTeam7())}" alt="${draft.getTeam7()} logo" /></td>
                <td class="player">${draft.getPick7()}</td>
                <td>${draft.getPos7()}</td>
                <td>${draft.getUni7()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">8.</td>
                <td><img src="${draft.getLogo(draft.getTeam8())}" alt="${draft.getTeam8()} logo" /></td>
                <td class="player">${draft.getPick8()}</td>
                <td>${draft.getPos8()}</td>
                <td>${draft.getUni8()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">9.</td>
                <td><img src="${draft.getLogo(draft.getTeam9())}" alt="${draft.getTeam9()} logo" /></td>
                <td class="player">${draft.getPick9()}</td>
                <td>${draft.getPos9()}</td>
                <td>${draft.getUni9()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">10.</td>
                <td><img src="${draft.getLogo(draft.getTeam10())}" alt="${draft.getTeam10()} logo" /></td>
                <td class="player">${draft.getPick10()}</td>
                <td>${draft.getPos10()}</td>
                <td>${draft.getUni10()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">11.</td>
                <td><img src="${draft.getLogo(draft.getTeam11())}" alt="${draft.getTeam11()} logo" /></td>
                <td class="player">${draft.getPick11()}</td>
                <td>${draft.getPos11()}</td>
                <td>${draft.getUni11()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">12.</td>
                <td><img src="${draft.getLogo(draft.getTeam12())}" alt="${draft.getTeam12()} logo" /></td>
                <td class="player">${draft.getPick12()}</td>
                <td>${draft.getPos12()}</td>
                <td>${draft.getUni12()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">13.</td>
                <td><img src="${draft.getLogo(draft.getTeam13())}" alt="${draft.getTeam13()} logo" /></td>
                <td class="player">${draft.getPick13()}</td>
                <td>${draft.getPos13()}</td>
                <td>${draft.getUni13()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">14.</td>
                <td><img src="${draft.getLogo(draft.getTeam14())}" alt="${draft.getTeam14()} logo" /></td>
                <td class="player">${draft.getPick14()}</td>
                <td>${draft.getPos14()}</td>
                <td>${draft.getUni14()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">15.</td>
                <td><img src="${draft.getLogo(draft.getTeam15())}" alt="${draft.getTeam15()} logo" /></td>
                <td class="player">${draft.getPick15()}</td>
                <td>${draft.getPos15()}</td>
                <td>${draft.getUni15()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">16.</td>
                <td><img src="${draft.getLogo(draft.getTeam16())}" alt="${draft.getTeam16()} logo" /></td>
                <td class="player">${draft.getPick16()}</td>
                <td>${draft.getPos16()}</td>
                <td>${draft.getUni16()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">17.</td>
                <td><img src="${draft.getLogo(draft.getTeam17())}" alt="${draft.getTeam17()} logo" /></td>
                <td class="player">${draft.getPick17()}</td>
                <td>${draft.getPos17()}</td>
                <td>${draft.getUni17()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">18.</td>
                <td><img src="${draft.getLogo(draft.getTeam18())}" alt="${draft.getTeam18()} logo" /></td>
                <td class="player">${draft.getPick18()}</td>
                <td>${draft.getPos18()}</td>
                <td>${draft.getUni18()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">19.</td>
                <td><img src="${draft.getLogo(draft.getTeam19())}" alt="${draft.getTeam19()} logo" /></td>
                <td class="player">${draft.getPick19()}</td>
                <td>${draft.getPos19()}</td>
                <td>${draft.getUni19()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">20.</td>
                <td><img src="${draft.getLogo(draft.getTeam20())}" alt="${draft.getTeam20()} logo" /></td>
                <td class="player">${draft.getPick20()}</td>
                <td>${draft.getPos20()}</td>
                <td>${draft.getUni20()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">21.</td>
                <td><img src="${draft.getLogo(draft.getTeam21())}" alt="${draft.getTeam21()} logo" /></td>
                <td class="player">${draft.getPick21()}</td>
                <td>${draft.getPos21()}</td>
                <td>${draft.getUni21()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">22.</td>
                <td><img src="${draft.getLogo(draft.getTeam22())}" alt="${draft.getTeam22()} logo" /></td>
                <td class="player">${draft.getPick22()}</td>
                <td>${draft.getPos22()}</td>
                <td>${draft.getUni22()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">23.</td>
                <td><img src="${draft.getLogo(draft.getTeam23())}" alt="${draft.getTeam23()} logo" /></td>
                <td class="player">${draft.getPick23()}</td>
                <td>${draft.getPos23()}</td>
                <td>${draft.getUni23()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">24.</td>
                <td><img src="${draft.getLogo(draft.getTeam24())}" alt="${draft.getTeam24()} logo" /></td>
                <td class="player">${draft.getPick24()}</td>
                <td>${draft.getPos24()}</td>
                <td>${draft.getUni24()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">25.</td>
                <td><img src="${draft.getLogo(draft.getTeam25())}" alt="${draft.getTeam25()} logo" /></td>
                <td class="player">${draft.getPick25()}</td>
                <td>${draft.getPos25()}</td>
                <td>${draft.getUni25()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">26.</td>
                <td><img src="${draft.getLogo(draft.getTeam26())}" alt="${draft.getTeam26()} logo" /></td>
                <td class="player">${draft.getPick26()}</td>
                <td>${draft.getPos26()}</td>
                <td>${draft.getUni26()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">27.</td>
                <td><img src="${draft.getLogo(draft.getTeam27())}" alt="${draft.getTeam27()} logo" /></td>
                <td class="player">${draft.getPick27()}</td>
                <td>${draft.getPos27()}</td>
                <td>${draft.getUni27()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">28.</td>
                <td><img src="${draft.getLogo(draft.getTeam28())}" alt="${draft.getTeam28()} logo" /></td>
                <td class="player">${draft.getPick28()}</td>
                <td>${draft.getPos28()}</td>
                <td>${draft.getUni28()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">29.</td>
                <td><img src="${draft.getLogo(draft.getTeam29())}" alt="${draft.getTeam29()} logo" /></td>
                <td class="player">${draft.getPick29()}</td>
                <td>${draft.getPos29()}</td>
                <td>${draft.getUni29()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">30.</td>
                <td><img src="${draft.getLogo(draft.getTeam30())}" alt="${draft.getTeam30()} logo" /></td>
                <td class="player">${draft.getPick30()}</td>
                <td>${draft.getPos30()}</td>
                <td>${draft.getUni30()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">31.</td>
                <td><img src="${draft.getLogo(draft.getTeam31())}" alt="${draft.getTeam31()} logo" /></td>
                <td class="player">${draft.getPick31()}</td>
                <td>${draft.getPos31()}</td>
                <td>${draft.getUni31()}</td>
            </tr>
            <tr class="fullDraftRow">
                <td class="team">32.</td>
                <td><img src="${draft.getLogo(draft.getTeam32())}" alt="${draft.getTeam32()} logo" /></td>
                <td class="player">${draft.getPick32()}</td>
                <td>${draft.getPos32()}</td>
                <td>${draft.getUni32()}</td>
            </tr>
        </table>

        <div class="votes">
            <button href="/DraftShare_war/upvote?id=${draft.getId()}" class="btn btn-success">Upvote</button>
            <button href="/DraftShare_war/downvote?id=${draft.getId()}" class="btn btn-danger">Downvote</button>
        </div>
    </div>
</body>
</html>
