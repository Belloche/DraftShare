<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<title>DraftShare - Home</title>
<c:import url="bootstrap.jsp" />
<link rel="stylesheet" href="master.css" />
<main>

<body class="bg-grey">
<c:import url="nav.jsp" />

    <div class="container bg-white">
        <h1>Welcome to DraftShare</h1>
        <p>DraftShare is a tool for creating and sharing your NFL mock drafts. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Fusce id velit ut tortor. Amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus. Magnis dis parturient montes nascetur. Arcu ac tortor dignissim convallis. Quam elementum pulvinar etiam non quam lacus. Sed cras ornare arcu dui vivamus arcu felis. Proin fermentum leo vel orci porta non pulvinar. Integer malesuada nunc vel risus. Purus sit amet volutpat consequat mauris nunc congue nisi vitae. Tristique sollicitudin nibh sit amet commodo nulla facilisi. Ipsum dolor sit amet consectetur adipiscing elit. Curabitur vitae nunc sed velit dignissim sodales ut eu. Ipsum dolor sit amet consectetur adipiscing elit. Id ornare arcu odio ut sem. Molestie at elementum eu facilisis sed odio morbi. Risus nec feugiat in fermentum. Faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam. Amet massa vitae tortor condimentum lacinia quis vel. Dolor sit amet consectetur adipiscing elit duis. Id nibh tortor id aliquet lectus proin nibh nisl. Vitae congue mauris rhoncus aenean vel elit. Feugiat in ante metus dictum. Ut tristique et egestas quis ipsum. Venenatis a condimentum vitae sapien. Arcu odio ut sem nulla pharetra diam sit. Eleifend mi in nulla posuere sollicitudin aliquam. Commodo odio aenean sed adipiscing diam donec adipiscing tristique risus.</p>
    </div>

    <c:forEach var="draft" items="${drafts}">
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
</main>
</html>
