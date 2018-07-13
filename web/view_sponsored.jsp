<%-- 
    Document   : view_sponsored
    Created on : Jul 1, 2018, 11:55:36 PM
    Author     : Saroj
--%>

<%@page import="beans.sponsored_project_bean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <table border="1">
             
             <tr>
                 <th>idea id</th>
                 <th>company id</th>
                 <th>company name</th>
                 <th>amount sponsoring</th>
                 <th>description</th>
                 <th>project name</th>
                 <th>project type</th>
                 <th>project description</th>
             </tr>
               
                <%
                    ArrayList<sponsored_project_bean> posts = (ArrayList<sponsored_project_bean>) request.getAttribute("progects");
                    for (sponsored_project_bean post : posts) {
                %>
                <tr>
                    <td><%=post.getProgid()%></td>
                    <td><%=post.getCompid()%></td>
                    <td><%=post.getCompname()%></td>
                    <td><%=post.getMoney()%></td>
                    <td><%=post.getDescription()%></td>
                    <td><%=post.getP_name()%></td>
                    <td><%=post.getP_type()%></td>
                    <td><%=post.getP_desc()%></td>
                    
                   

                </tr>
                <%}%>
            </table>
    </body>
</html>
