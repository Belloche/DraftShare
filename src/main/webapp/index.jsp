<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>DraftShare - Home</title>
<link rel="stylesheet" href="master.css" />
<body>
<c:import url="nav.jsp" />

    <div class="draft container">
<%--        This will be the most likely format of each draft on the home page--%>
<%--        <h2>${title}</h2>--%>
<%--        <table>--%>
<%--            <tr>--%>
<%--                <td>1. ${firstTeam}</td>--%>
<%--                <td>${firstPick}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>2. ${secondTeam}</td>--%>
<%--                <td>${secondPick}</td>--%>
<%--            </tr>--%>
<%--            <tr>--%>
<%--                <td>3. ${thirdTeam}</td>--%>
<%--                <td>${thirdPick}</td>--%>
<%--            </tr>--%>
<%--        </table>--%>
        <h2>My first draft</h2>
        <p class="user">User: Belloche</p>
        <p>Votes: <span class="upvoteCount">10</span> | <span class="downvoteCount">3</span></p>
        <table>
            <tr>
                <td class="team">1. Jaguars</td>
                <td class="player">Trevor Lawrence</td>
            </tr>
            <tr>
                <td class="team">2. Jets</td>
                <td class="player">Justin Fields</td>
            </tr>
            <tr>
                <td class="team">3. Dolphins</td>
                <td class="player">Penei Sowell</td>
            </tr>
        </table>
    <a href="viewDraft.jsp" class="viewDraft">View Full Draft</a>
    </div>





    <div class="container">
        <h1>Welcome to DraftShare</h1>
        <p>DraftShare is a tool for creating and sharing your NFL mock drafts. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce id velit ut tortor. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Magnis dis parturient montes nascetur. Arcu ac tortor dignissim convallis. Quam elementum pulvinar etiam non quam lacus. Sed cras ornare arcu dui vivamus arcu felis. Proin fermentum leo vel orci porta non pulvinar. Integer malesuada nunc vel risus. Purus sit amet volutpat consequat mauris nunc congue nisi vitae. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Ipsum dolor sit amet consectetur adipiscing elit. Curabitur vitae nunc sed velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Id ornare arcu odio ut sem. Molestie at elementum eu facilisis sed odio morbi. Risus nec feugiat in fermentum. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Amet massa vitae tortor condimentum lacinia quis vel. Dolor sit amet consectetur adipiscing elit duis. Id nibh tortor id aliquet lectus proin nibh nisl. Vitae congue mauris rhoncus aenean vel elit. Feugiat in ante metus dictum. Ut tristique et egestas quis ipsum. Venenatis a condimentum vitae sapien. Arcu odio ut sem nulla pharetra diam sit. Eleifend mi in nulla posuere sollicitudin aliquam. Commodo odio aenean sed adipiscing diam donec adipiscing tristique risus.</p>
    </div>
</body>
</html>
