<%--
  Created by IntelliJ IDEA.
  User: Zane
  Date: 2/23/21
  Time: 2:44 PM
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    function openNav() {
        document.getElementById("sidebar").style.width = "250px";
        document.getElementsByClassName("navBar").style.marginLeft = "250px";
    }

    function closeNav() {
        document.getElementById("sidebar").style.width = "0";
        document.getElementsByClassName("navBar").style.marginLeft = "0";
    }
</script>
<nav class="navBar">
    <b><a href="/DraftShare/home" aria-label="Home" class="navTransition logo left text-decoration-none">DraftShare</a></b>
    <a href="/DraftShare/creator" class="navTransition text-left text-decoration-none collapseNav">Create a Draft</a>
    <a href="/DraftShare/search" class="navTransition logo left text-decoration-none collapseNav">Search Drafts</a>
    <a href="/DraftShare/about.jsp" class="navTransition logo left text-decoration-none collapseNav">About</a>
    <a href="/DraftShare/userPage" class="navTransition logo left text-decoration-none collapseNav">Your Page</a>

    <button class="openButton btn btn-primary" onclick="openNav()">
        <div class="hamburger"></div>
        <div class="hamburger"></div>
        <div class="hamburger"></div>
    </button>
</nav>

<div id="sidebar">
    <a href="javascript:void(0)" class="closeButton" onclick="closeNav()">&times;</a>
    <b><a href="/DraftShare/home" aria-label="Home" class="navTransition logo left text-decoration-none">DraftShare</a></b>
    <a href="/DraftShare/creator" class="navTransition text-left text-decoration-none">Create a Draft</a>
    <a href="/DraftShare/search" class="navTransition logo left text-decoration-none">Search Drafts</a>
    <a href="/DraftShare/about.jsp" class="navTransition logo left text-decoration-none">About</a>
    <a href="/DraftShare/userPage" class="navTransition logo left text-decoration-none">Your Page</a>
</div>