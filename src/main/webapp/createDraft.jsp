<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 4/12/21
  Time: 1:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DraftShare - Create a Draft</title>
    <link rel="stylesheet" href="master.css" />
</head>
<body>
    <c:import url="nav.jsp" />
    <div class="container">
        <form action="/createDraft">
            <table class="fullDraft center">
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
                        <select list="teams" name="team1" id="team1">
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
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="pick1" id="pick1" />
                    </td>
                    <td>
                        <select name="pos1" id="pos1" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni1" id="uni1" />
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
                        <input type="text" name="pick2" id="pick2" />
                    </td>
                    <td>
                        <select name="pos2" id="pos2" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni2" id="uni2" />
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
                        <input type="text" name="pick3" id="pick3" />
                    </td>
                    <td>
                        <select name="pos3" id="pos3" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni3" id="uni3" />
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
                        <input type="text" name="pick4" id="pick4" />
                    </td>
                    <td>
                        <select name="pos4" id="pos4" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni4" id="uni4" />
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
                        <input type="text" name="pick5" id="pick5" />
                    </td>
                    <td>
                        <select name="pos5" id="pos5" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni5" id="uni5" />
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
                        <input type="text" name="pick6" id="pick6" />
                    </td>
                    <td>
                        <select name="pos6" id="pos6" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni6" id="uni6" />
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
                        <input type="text" name="pick7" id="pick7" />
                    </td>
                    <td>
                        <select name="pos7" id="pos7" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni7" id="uni7" />
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
                        <input type="text" name="pick8" id="pick8" />
                    </td>
                    <td>
                        <select name="pos8" id="pos8" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni8" id="uni8" />
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
                                <option value="Broncos">Broncos</option>
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="pick9" id="pick9" />
                    </td>
                    <td>
                        <select name="pos9" id="pos9" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni9" id="uni9" />
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
                        <input type="text" name="pick10" id="pick10" />
                    </td>
                    <td>
                        <select name="pos10" id="pos10" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni10" id="uni10" />
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
                        <input type="text" name="pick11" id="pick11" />
                    </td>
                    <td>
                        <select name="pos11" id="pos11" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni11" id="uni11" />
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
                        <input type="text" name="pick12" id="pick12" />
                    </td>
                    <td>
                        <select name="pos12" id="pos12" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni12" id="uni12" />
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
                        <input type="text" name="pick13" id="pick13" />
                    </td>
                    <td>
                        <select name="pos13" id="pos13" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni13" id="uni13" />
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
                        <input type="text" name="pick14" id="pick14" />
                    </td>
                    <td>
                        <select name="pos14" id="pos14" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni14" id="uni14" />
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
                        <input type="text" name="pick15" id="pick15" />
                    </td>
                    <td>
                        <select name="pos15" id="pos15" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni15" id="uni15" />
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
                        <input type="text" name="pick16" id="pick16" />
                    </td>
                    <td>
                        <select name="pos16" id="pos16" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni16" id="uni16" />
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
                        <input type="text" name="pick17" id="pick17" />
                    </td>
                    <td>
                        <select name="pos17" id="pos17" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni17" id="uni17" />
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
                        <input type="text" name="pick18" id="pick18" />
                    </td>
                    <td>
                        <select name="pos18" id="pos18" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni18" id="uni18" />
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
                        <input type="text" name="pick19" id="pick19" />
                    </td>
                    <td>
                        <select name="pos19" id="pos19" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni19" id="uni19" />
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
                        <input type="text" name="pick20" id="pick20" />
                    </td>
                    <td>
                        <select name="pos20" id="pos20" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni20" id="uni20" />
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
                                <option value="Colts">Colts</option>
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="pick21" id="pick21" />
                    </td>
                    <td>
                        <select name="pos21" id="pos21" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni21" id="uni21" />
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
                                <option value="Titans">Titans</option>
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="pick22" id="pick22" />
                    </td>
                    <td>
                        <select name="pos22" id="pos22" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni22" id="uni22" />
                    </td>
                </tr>
                <tr class="fullDraftRow">
                    <td>
                        <b>23.</b></td>
                    <td>
                        <select list="teams" name="team23" id="team23">
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
                                <option value="Jaguars">Jaguars</option>
                                <option value="Texans">Texans</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="pick23" id="pick23" />
                    </td>
                    <td>
                        <select name="pos23" id="pos23" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni23" id="uni23" />
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
                        <input type="text" name="pick24" id="pick24" />
                    </td>
                    <td>
                        <select name="pos24" id="pos24" list="positions">
                            <optgroup label="Offense">
                                <option value="QB">Quarterback</option>
                                <option value="RB">Runningback</option>
                                <option value="FB">Fullback</option>
                                <option value="WR">Wide Receiver</option>
                                <option value="TE">Tight End</option>
                                <option value="C">Center</option>
                                <option value="G">Guard</option>
                                <option value="OT">Offensive Tackle</option>
                            </optgroup>
                            <optgroup label="Defense">
                                <option value="LB">Linebacker</option>
                                <option value="DT">Defensive Tackle</option>
                                <option value="DE">Defensive End</option>
                                <option value="CB">Cornerback</option>
                                <option value="S">Safety</option>
                            </optgroup>
                            <optgroup label="Special Teams">
                                <option value="K">Kicker</option>
                                <option value="P">Punter</option>
                                <option value="R">Punt/Kick Returner</option>
                            </optgroup>
                        </select>
                    </td>
                    <td>
                        <input type="text" name="uni24" id="uni24" />
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
