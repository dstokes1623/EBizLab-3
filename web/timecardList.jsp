<%-- 
    Document   : timecardList
    Created on : Mar 21, 2022, 9:16:36 AM
    Author     : 0798727
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>List of Timecards</h1>
          <table>
            <tr>
                <th>Employee</th>
                <th class="right">Hours</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach var="card" items="${timecards}">
                <tr>
                    <td>${card.employeeID}</td>
                    <td class = "right">${card.hoursWorked}</td>
                    <td>
                        <form action="timecard" method="post">
                            <input type="hidden" name="option" value="Edit">
                            <input type="hidden" name="timecardID" value="<c:out value='${card.timecardID}'/>">
                            <input type="submit" value="Edit">
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
