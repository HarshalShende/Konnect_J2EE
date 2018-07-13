<%-- 
    Document   : ideahub
    Created on : Jun 30, 2018, 10:42:50 AM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%
            HttpSession s = request.getSession();
            if (s == null) {
        %><jsp:forward page="/login.jsp"/><%
                return;
            }
        %>
    </head>
    <body>

        <div style="float: right">

            <p>

                <%
                    String user = session.getAttribute("name").toString();
                    out.print("hey " + user);

                %>  

            </p>

        </div>
        <div style="widows: 650px;margin: 0 auto;display: table;margin-top: 3em;">
            <form action="idea_control" method="POST">

                <table>
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
            <%= request.getParameter("message")%>  
        </div>
        <a href="index.jsp">back to home</a>
    </body>
</html>
