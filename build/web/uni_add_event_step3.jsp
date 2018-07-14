<%-- 
    Document   : newjspuni_add_event_step3
    Created on : Jul 9, 2018, 7:34:13 PM
    Author     : Saroj
--%>

<%@page import="beans.unieventbean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Step 3 of 3</h1>
        <table>
            
            <tr>
                <th>event id</th>
                <th>title</th>
                <th>type</th>
                <th>location</th>
                <th>address</th>
                <th>start date</th>
                <th>start time</th>
                <th>end date</th>
                <th>end time</th>
                <th>Description</th>
                <th>university </th>
            </tr>
            <%
                ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
                for (unieventbean post : posts) {
            %>
             <tr>
                 <td><img src="uni_images/<%= post.getSavepath()%>" height="250;"/></td>
            </tr>
            <tr>
                <td><%=post.getEid()%></td>
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
            <%}%>
        </table>
        <a href="index4.jsp">back</a>
    </body>
</html>
