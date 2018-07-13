<%-- 
    Document   : comp_view_idea
    Created on : Jul 13, 2018, 10:22:36 PM
    Author     : Saroj
--%>

<%@page import="beans.unieventbean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>




        <%
            ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
            for (unieventbean post : posts) {
        %>
        <form action="editcompide">

            <table>
                <tr>
                    <td><img src="comp_images//<%= post.getSavepath()%>" height="250;"/></td>
                </tr>
                <tr>
                    <td><%=post.getEid()%></td>
                    <td><input type="text" name="evid" value="<%=post.getEid()%>" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td><%=post.getTitle()%></td>
                </tr>
                <tr>
                    <td><%=post.getType()%></td>
                </tr>
                <tr>
                    <td><%=post.getLocation()%></td>
                </tr>
                <tr>
                    <td><%=post.getAddress()%></td>
                </tr>
                <tr>
                    <td><%=post.getStartdate()%></td>
                </tr>
                <tr>
                    <td><%=post.getStarttime()%></td>
                </tr>
                <tr>
                    <td><%=post.getEnddate()%></td>
                </tr>
                <tr>
                    <td><%=post.getEndtime()%></td>
                </tr>
                <tr>
                    <td><%=post.getDesc()%></td>
                </tr>
                <tr>
                    <td><%=post.getUniid()%></td>
                </tr>
                <tr>
                    
                    <td><a href="comp_view_calander.jsp">calender</a></td>
                    <td><input type="submit" value="Edit idea" /></td>
                </tr>
            </table>
        </form>
        <%}%>


    </body>
</html>

