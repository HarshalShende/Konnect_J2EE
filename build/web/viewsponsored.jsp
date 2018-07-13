<%-- 
    Document   : viewsponsored
    Created on : Jul 4, 2018, 8:00:20 PM
    Author     : Saroj
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.projectbean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <div style="widows: 650px;margin: 0 auto;display: table;">
            <table border="1">
                <tr>
                    <th>project id</th>
                    <th>name</th>
                    <th>type</th>
                    <th>description</th>
                    <th>user id</th>
                </tr>
                <%
                    ArrayList<projectbean> posts = (ArrayList<projectbean>) request.getAttribute("progects");
                    for (projectbean post : posts) {
                %>
                <tr>
                    <td><%=post.getProgid()%></td>
                    <td><%=post.getName()%></td>
                    <td><%=post.getType()%></td>
                    <td><%=post.getDescription()%></td>
                    <td><%=post.getUid()%></td>

                </tr>
                <%}%>
            </table>
           
        </div>
    </body>
</html>
