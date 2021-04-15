<%--
  Created by IntelliJ IDEA.
  User: eloua
  Date: 4/15/2021
  Time: 1:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tableau</title>
</head>
<body>


    <%
        int nbLig= (int) request.getAttribute("nbLig");
        int nbCol= (int) request.getAttribute("nbCol");
    %>

    <div >

        <table border="1" >
            <tbody>
            <% for(int i=0;i<nbLig;i++){ %>
            <tr>
                <% for(int j=0;j<nbCol;j++){ %>
                <td> A </td>
                <%}%>
            </tr>
            <%}%>
            </tbody>
        </table>

    </div>

    </body>


</html>
