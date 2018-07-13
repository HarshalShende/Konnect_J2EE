<%-- 
    Document   : user_add_uni_event_comment
    Created on : Jul 12, 2018, 5:06:38 PM
    Author     : Saroj
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="controller.DB"%>
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
    <body>
        <%
            String id = "";
            String uid = "";
            ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
            for (unieventbean post : posts) {
        %>


        <table>
            <tr>
                <td><img src="comp_images//<%= post.getSavepath()%>" height="250;"/></td>
            </tr>
            <tr>
                <td><%=post.getEid()%><% id = post.getEid();%></td>
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
                <td><%=post.getUniid()%><% uid = post.getEid();%></td>
            </tr>
            <tr>

            </tr>
        </table>

        <%}%>
        <%try {
                ResultSet rs = DB.search("SELECT * FROM `user_comp_event_comment`,`user` WHERE `user_comp_event_comment`.`uid` = `user`.`id`"
                        + " AND `user_comp_event_comment`.`eid` = '" + id + "'");
                while (rs.next()) {
        %>


        <table>

            <tr>
                <td>name</td>
                <td><%=rs.getString(7)%></td>
            </tr>
            <tr>
                <td>comment</td>
                <td><%=rs.getString(5)%></td>
            
        </tr>

    </table>

    <%}
        } catch (Exception e) {
        }%>

    <form action="user_com_eve_com" method="POST">
        <table border="1">
            <tr>
                <td>Comment</td>
                <td><input type="text" name="comment" value="" /></td>
                <input type="hidden" name="eid" value="<%= id%>" />
                <input type="hidden" name="uniid" value="<%= uid%>" />
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="submit" /></td>
            </tr>
            </tbody>
        </table>

    </form>

</body>
</html>
