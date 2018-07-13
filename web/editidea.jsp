<%-- 
    Document   : editidea
    Created on : Jul 4, 2018, 10:53:49 AM
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
            <h1>Edit idea</h1>
            <h2>Note that you cannot edit sponsored ideas</h2>
            <form action="edit_idea" method="POST">
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
                        <td>idea name</td>
                        <td><input type="text" name="idea" value="" /></td>
                    </tr>
                    <tr>
                        <td>idea type</td>
                        <td>
                            <select name="type">
                                <option selected="1">misc</option>
                                <option>technical</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>description</td>
                        <td>
                            <textarea name="desc" rows="4" cols="50">
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="hidden"/></td>
                        <td><input type="submit" value="submit" /></td>

                        <td><input type="reset" value="Cansel" /></td>
                    </tr>

                </table>

            </form>
          
        </div>
    </body>
</html>
