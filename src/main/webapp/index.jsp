<%-- Created by IntelliJ IDEA. User: mahdi Date: 4/15/2021 Time: 11:40 AM To
change this template use File | Settings | File Templates. --%> <%@ page
        contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<% String nom=(String)request.getAttribute("nom"); %>
<div class="container">
    <form method="POST" action="fs">
        <div >
            <label for="nbLig">nbLig:</label>
            <input type="number"id="nbLig" name="nbLig" />
        </div>
        <hr />
        <div >
            <label for="nbCol">nbCol:</label>
            <input type="number" id="nbCol" name="nbCol" />
        </div>

        <button type="submit" >Submit</button>
    </form>
</div>
</body>
</html>