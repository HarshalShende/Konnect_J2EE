<%-- 
    Document   : ideapage
    Created on : Jul 1, 2018, 6:16:40 PM
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
            <br><br><br>
            <h1>sponsor</h1>
            <form action="sonsor_control" method="POST">
                <table>

                    <tr>
                        <td>project id</td>
                        <td> <select name="progid">
                                <%
                                    ArrayList<projectbean> posts1 = (ArrayList<projectbean>) request.getAttribute("progects");
                                    for (projectbean post1 : posts1) {
                                %>

                                <option><%=post1.getProgid()%></option>


                                <%}%>
                            </select>

                    <tr>
                        <td>amount of money sponsoring</td>
                        <td><input type="text" name="money" value="" /></td>
                    </tr>
                    <tr>
                        <td>description</td>
                        <td>
                            <textarea name="desc" rows="4" cols="20">
                            </textarea>
                        </td>
                    </tr>
                     <tr>
                         <td><input type="submit" value="Submit" /></td>
                         <td><input type="reset" value="Cansel" /></td>
                    </tr>

                </table>

            </form>
                                <%= request.getParameter("message") %>
        </div>
    </body>
</html>
