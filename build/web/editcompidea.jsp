<%-- 
    Document   : edit_uni_idea
    Created on : Jul 10, 2018, 9:21:05 AM
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
        <% String id = "";%>
        <% String eeid = "";%>
        <% String title = "";%>
        <% String type = "";%>
        <% String address = "";%>
        <% String stdate = "";%>
        <% String sttime = "";%>
        <% String endd = "";%>
        <% String endt = "";%>
        <% String descr = "";%>
        <% String cnum = "";%>
        <% String loca = "";%>

        <div style="widows: 650px;margin: 0 auto;display: table;">
            <table border="1px;">
                <tr>
                    <td>eid</td>
                    <td>title</td>
                    <td>type</td>
                    <td>location</td>
                    <td>address</td>
                    <td>start date</td>
                    <td>start time</td>
                    <td>End date</td>
                    <td>End time</td>
                    <td>description</td>
                    <td>uni id</td>

                </tr>


                <%
                    ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
                    for (unieventbean post : posts) {
                %>
                <tr>

                    <td><%=post.getEid()%></td>

                    <td><%=post.getTitle()%></td>

                    <td><%=post.getType()%></td>

                    <td><%=post.getLocation()%></td>

                    <td><%=post.getAddress()%></td>

                    <td><%=post.getStartdate()%></td>

                    <td><%=post.getStarttime()%></td>

                    <td><%=post.getEnddate()%></td>

                    <td><%=post.getEndtime()%></td>

                    <td><%=post.getDesc()%></td>

                    <td><%=post.getUniid()%>
                        <% id = post.getUniid(); %>
                    </td>


                    <%}%>
            </table>
            <form action="editcompide" method="POST">
                <h1>Edit one of your events</h1>
                <table>
                    <tr>
                        <td>event id</td>
                        <td><select name="eveid">
                                <%
                                    ArrayList<unieventbean> postss = (ArrayList<unieventbean>) request.getAttribute("progects");
                                    for (unieventbean postr : postss) {
                                %>
                                <option><%=postr.getEid()%><% eeid = postr.getEid();%></option>
                                <%}%>
                                <% ResultSet rs = DB.search("SELECT * FROM `comp_event` WHERE `eid` = '" + eeid + "'");
                                    while (rs.next()) {

                                        title = rs.getString(2);
                                        type = rs.getString(3);
                                        cnum = rs.getString(4);
                                        loca = rs.getString(5);
                                        address = rs.getString(6);
                                        stdate = rs.getString(7);
                                        sttime = rs.getString(8);
                                        endd = rs.getString(9);
                                        endt = rs.getString(10);
                                        descr = rs.getString(11);

                                    }%>
                            </select></td>
                        <td></td>

                    </tr>

                    <tr>
                        <td>title</td>
                        <td><input type="text" name="title" value="<%= title%>" /></td>
                    </tr>
                    <tr>
                        <td>type</td>
                        <td><input type="text" name="type" value="<%= type%>" /></td>
                    </tr>
                    <tr>
                        <td>contact</td>
                        <td><input type="text" name="cnum" value="<%= cnum%>" /></td>
                    </tr>
                    <tr>
                        <td>location name</td>
                        <td><input type="text" name="location" value="<%= loca%>" /></td>
                    </tr>
                    <tr>
                        <td>address</td>
                        <td>
                            <textarea name="address" rows="4" cols="20">
                                <%= address%>
                            </textarea>
                        </td>
                    </tr>
                    <tr>
                        <td>start time</td>
                        <td><input type="date" name="startdate" value="<%= stdate%>" /></td>
                        <td>at</td>
                        <td><input type="time" name="starttime" value="<%= sttime%>" /></td>
                    </tr>
                    <tr>
                        <td>end time</td>
                        <td><input type="date" name="enddate" value="<%= endd%>" /></td>
                        <td>at</td>
                        <td><input type="time" name="endtime" value="<%= endt%>" /></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td>
                            <textarea name="desc" rows="4" cols="20">
                                <%= descr%>
                            </textarea>
                        </td>
                    </tr>

                    <tr>
                        <td><input type="submit" value="submit" /></td>
                    </tr>

                </table>

            </form>
            <%= request.getParameter("message")%>
        </form>
    </div>
</body>
</html>
