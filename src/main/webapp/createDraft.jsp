<%--
  Created by IntelliJ IDEA.
  User: Zane Miller
  Date: 4/12/21
  Time: 1:02 PM
  Draft creator page
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>DraftShare - Create a Draft</title>
    <link rel="stylesheet" href="master.css" />
    <c:import url="bootstrap.jsp" />
</head>
<main>
    <body>
    <c:import url="nav.jsp" />
    <div class="container bg-white draftTable">
        <h1>Create a Draft</h1>
        <p><b>Names with letters only</b></p>
        <form action="createDraft" class="form needs-validation">
            <label for="draftName"><b>Draft Name</b></label>
            <input type="text" placeholder="1-50 Letters or Numbers" pattern="[A-Za-z0-9\s'.-]{1,50}" name="draftName" id="draftName" class="form-control" required />

            <label for="description"><b>Description</b></label>
            <textarea name="description" placeholder="512 characters or less" maxlength="512" id="description" rows="2" class="form-control"></textarea>

            <table class="fullDraft center table table-responsive">
                <tr class="fullDraftRow">
                    <th>Pick #</th>
                    <th>Team</th>
                    <th>Name</th>
                    <th>Position</th>
                    <th>College</th>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>1.</b></td>
                    <td>
                        <select list="teams" name="team1" id="team1" required>
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars" selected="selected">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick1" id="pick1" required />
                    </td>
                    <td>
                        <select name="pos1" id="pos1" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni1" id="uni1" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>2.</b></td>
                    <td>
                        <select list="teams" name="team2" id="team2">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets" selected="selected">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick2" id="pick2" />
                    </td>
                    <td>
                        <select name="pos2" id="pos2" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni2" id="uni2" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>3.</b></td>
                    <td>
                        <select list="teams" name="team3" id="team3">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers" selected="selected">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick3" id="pick3" />
                    </td>
                    <td>
                        <select name="pos3" id="pos3" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni3" id="uni3" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>4.</b></td>
                    <td>
                        <select list="teams" name="team4" id="team4">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons" selected="selected">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick4" id="pick4" />
                    </td>
                    <td>
                        <select name="pos4" id="pos4" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni4" id="uni4" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>5.</b></td>
                    <td>
                        <select list="teams" name="team5" id="team5">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals" selected="selected">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick5" id="pick5" />
                    </td>
                    <td>
                        <select name="pos5" id="pos5" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni5" id="uni5" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>6.</b></td>
                    <td>
                        <select list="teams" name="team6" id="team6">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins" selected="selected">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick6" id="pick6" />
                    </td>
                    <td>
                        <select name="pos6" id="pos6" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni6" id="uni6" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>7.</b></td>
                    <td>
                        <select list="teams" name="team7" id="team7">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions" selected="selected">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick7" id="pick7" />
                    </td>
                    <td>
                        <select name="pos7" id="pos7" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni7" id="uni7" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>8.</b></td>
                    <td>
                        <select list="teams" name="team8" id="team8">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers" selected="selected">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick8" id="pick8" />
                    </td>
                    <td>
                        <select name="pos8" id="pos8" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni8" id="uni8" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>9.</b></td>
                    <td>
                        <select list="teams" name="team9" id="team9">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos" selected="selected">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick9" id="pick9" />
                    </td>
                    <td>
                        <select name="pos9" id="pos9" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni9" id="uni9" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>10.</b></td>
                    <td>
                        <select list="teams" name="team10" id="team10">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles" selected="selected">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick10" id="pick10" />
                    </td>
                    <td>
                        <select name="pos10" id="pos10" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni10" id="uni10" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>11.</b></td>
                    <td>
                        <select list="teams" name="team11" id="team11">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears" selected="selected">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick11" id="pick11" />
                    </td>
                    <td>
                        <select name="pos11" id="pos11" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni11" id="uni11" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>12.</b></td>
                    <td>
                        <select list="teams" name="team12" id="team12">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys" selected="selected">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick12" id="pick12" />
                    </td>
                    <td>
                        <select name="pos12" id="pos12" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni12" id="uni12" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>13.</b></td>
                    <td>
                        <select list="teams" name="team13" id="team13">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers" selected="selected">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick13" id="pick13" />
                    </td>
                    <td>
                        <select name="pos13" id="pos13" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni13" id="uni13" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>14.</b></td>
                    <td>
                        <select list="teams" name="team14" id="team14">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets" selected="selected">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick14" id="pick14" />
                    </td>
                    <td>
                        <select name="pos14" id="pos14" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni14" id="uni14" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>15.</b></td>
                    <td>
                        <select list="teams" name="team15" id="team15">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots" selected="selected">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick15" id="pick15" />
                    </td>
                    <td>
                        <select name="pos15" id="pos15" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni15" id="uni15" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>16.</b></td>
                    <td>
                        <select list="teams" name="team16" id="team16">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals" selected="selected">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick16" id="pick16" />
                    </td>
                    <td>
                        <select name="pos16" id="pos16" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni16" id="uni16" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>17.</b></td>
                    <td>
                        <select list="teams" name="team17" id="team17">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders" selected="selected">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick17" id="pick17" />
                    </td>
                    <td>
                        <select name="pos17" id="pos17" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni17" id="uni17" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>18.</b></td>
                    <td>
                        <select list="teams" name="team18" id="team18">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins" selected="selected">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick18" id="pick18" />
                    </td>
                    <td>
                        <select name="pos18" id="pos18" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni18" id="uni18" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>19.</b></td>
                    <td>
                        <select list="teams" name="team19" id="team19">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington" selected="selected">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick19" id="pick19" />
                    </td>
                    <td>
                        <select name="pos19" id="pos19" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni19" id="uni19" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>20.</b></td>
                    <td>
                        <select list="teams" name="team20" id="team20">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants" selected="selected">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick20" id="pick20" />
                    </td>
                    <td>
                        <select name="pos20" id="pos20" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni20" id="uni20" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>21.</b></td>
                    <td>
                        <select list="teams" name="team21" id="team21">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts" selected="selected">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick21" id="pick21" />
                    </td>
                    <td>
                        <select name="pos21" id="pos21" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni21" id="uni21" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>22.</b></td>
                    <td>
                        <select list="teams" name="team22" id="team22">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans" selected="selected">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick22" id="pick22" />
                    </td>
                    <td>
                        <select name="pos22" id="pos22" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni22" id="uni22" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>23.</b></td>
                    <td>
                        <select list="teams" name="team23" id="team23">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings" selected="selected">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick23" id="pick23" />
                    </td>
                    <td>
                        <select name="pos23" id="pos23" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni23" id="uni23" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>24.</b></td>
                    <td>
                        <select list="teams" name="team24" id="team24">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers" selected="selected">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick24" id="pick24" />
                    </td>
                    <td>
                        <select name="pos24" id="pos24" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni24" id="uni24" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>25.</b></td>
                    <td>
                        <select list="teams" name="team25" id="team25">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars" selected="selected">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick25" id="pick25" />
                    </td>
                    <td>
                        <select name="pos25" id="pos25" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni25" id="uni25" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>26.</b></td>
                    <td>
                        <select list="teams" name="team26" id="team26">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns" selected="selected">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick26" id="pick26" />
                    </td>
                    <td>
                        <select name="pos26" id="pos26" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni26" id="uni26" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>27.</b></td>
                    <td>
                        <select list="teams" name="team27" id="team27">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens" selected="selected">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick27" id="pick27" />
                    </td>
                    <td>
                        <select name="pos27" id="pos27" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni27" id="uni27" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>28.</b></td>
                    <td>
                        <select list="teams" name="team28" id="team28">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints" selected="selected">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick28" id="pick28" />
                    </td>
                    <td>
                        <select name="pos28" id="pos28" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni28" id="uni28" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>29.</b></td>
                    <td>
                        <select list="teams" name="team29" id="team29">
                            <optgroup label="NFC Teams">
                                <option value="Packers" selected="selected">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick29" id="pick29" />
                    </td>
                    <td>
                        <select name="pos29" id="pos29" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni29" id="uni29" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>30.</b></td>
                    <td>
                        <select list="teams" name="team30" id="team30">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills" selected="selected">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick30" id="pick30" />
                    </td>
                    <td>
                        <select name="pos30" id="pos30" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni30" id="uni30" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>31.</b></td>
                    <td>
                        <select list="teams" name="team31" id="team31">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens" selected="selected">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick31" id="pick31" />
                    </td>
                    <td>
                        <select name="pos31" id="pos31" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni31" id="uni31" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>32.</b></td>
                    <td>
                        <select list="teams" name="team32" id="team32">
                            <optgroup label="NFC Teams">
                                <option value="Packers">Packers</option>
                                <option value="Vikings">Vikings</option>
                                <option value="Bears">Bears</option>
                                <option value="Lions">Lions</option>
                                <option value="Cowboys">Cowboys</option>
                                <option value="Giants">Giants</option>
                                <option value="Eagles">Eagles</option>
                                <option value="Washington">Washington</option>
                                <option value="49ers">49ers</option>
                                <option value="Seahawks">Seahawks</option>
                                <option value="Rams">Rams</option>
                                <option value="Cardinals">Cardinals</option>
                                <option value="Saints">Saints</option>
                                <option value="Falcons">Falcons</option>
                                <option value="Buccaneers" selected="selected">Buccaneers</option>
                                <option value="Panthers">Panthers</option>
                            </optgroup>
                            <optgroup label="AFC Teams">
                                <option value="Patriots">Patriots</option>
                                <option value="Bills">Bills</option>
                                <option value="Dolphins">Dolphins</option>
                                <option value="Jets">Jets</option>
                                <option value="Steelers">Steelers</option>
                                <option value="Ravens">Ravens</option>
                                <option value="Browns">Browns</option>
                                <option value="Bengals">Bengals</option>
                                <option value="Chiefs">Chiefs</option>
                                <option value="Raiders">Raiders</option>
                                <option value="Chargers">Chargers</option>
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" pattern="[A-Za-z\s'.-]{1,50}" placeholder="1-50 Letters" name="pick32" id="pick32" />
                    </td>
                    <td>
                        <select name="pos32" id="pos32" list="positions">
                            <c:import url="positions.jsp" />
                        </select>
                    </td>
                    <td>
                        <select name="uni32" id="uni32" list="universities">
                            <option disabled selected value>Select a College</option>
                            <c:forEach var="name" items="${universities}">
                                <option value="${name}">${name}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
            </table>
            <button type="submit" class="btn btn-primary">All set? Submit Your Draft</button>
        </form>
    </div>
    <c:import url="footer.jsp" />
    </body>
</main>
</html>
