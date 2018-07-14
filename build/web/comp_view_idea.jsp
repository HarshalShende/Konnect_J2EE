<%-- 
    Document   : comp_view_idea
    Created on : Jul 13, 2018, 10:22:36 PM
    Author     : Saroj
--%>

<%@page import="beans.unieventbean"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <jsp:include page="Company_header.jsp"/> 
    </head>
    <body>

<section class="content-block team-1 team-1-1" wp-cz-section="blocks_team_1_1" wp-cz-section-title="Team 1-1" wp-cz-control="blocks_team_1_1_source" wp-cz-control-label="Content source" wp-cz-control-type="custom" wp-cz-control-type-custom="WP_BlocksContentDropdown_Customize_Control" wp-cz-control-section="blocks_team_1_1">
            <div class="container">
                <div class="underlined-title">
                    <h1 wp-cz-control="blocks_team_1_1_title" wp-cz-control-label="Title" wp-cz-control-section="blocks_team_1_1" wp-cz-theme-mod="blocks_team_1_1_title" wp-cz-control-type="textarea">My Events</h1>
                    <hr>
                </div>
                <div class="row">

                    <%
                        ArrayList<unieventbean> posts = (ArrayList<unieventbean>) request.getAttribute("progects");
                        for (unieventbean post : posts) {
                    %>
                    <form action="editcompide">

                        <div class="col-sm-4 team-member-wrap" wp-loop="blocks" wp-loop-clear-columns wp-loop-post_parent="get_theme_mod('blocks_team_1_1_source')" wp-loop-post-type-custom="blocks_content" wp-loop-post-status="publish" wp-loop-nopaging="true" wp-loop-order="ASC" wp-loop-orderby="menu_order">
                            <div class="team-member">
                                <img <img src="comp_images//<%= post.getSavepath()%>" class="img-responsive" alt="Member Image" wp-the-post-thumbnail="large">
                                <div class="team-details">
                                    <h4 class="member-name" wp-the-title> <%=post.getTitle()%><input type="hidden" name="evid" value="<%=post.getEid()%>" readonly="readonly" /></h4>
                                    <p class="position" wp-meta-value wp-meta-value-key="position" wp-if-get-post-meta="|position"> <%=post.getType()%></p>
                                    <p wp-the-content> Location : &nbsp;<%=post.getLocation()%></p>
                                    <p wp-the-content> Address : &nbsp;<%=post.getAddress()%></p>
                                    <p wp-the-content> Start Date : &nbsp;<%=post.getStartdate()%></p>
                                    <p wp-the-content> Start Time : &nbsp;<%=post.getStarttime()%></p>
                                    <p wp-the-content> End Date : &nbsp;<%=post.getEnddate()%></p>
                                    <p wp-the-content> End Time : &nbsp;<%=post.getEndtime()%></p>
                                    <p wp-the-content> Description : &nbsp;<%=post.getDesc()%></p>
                                    <ul class="list-inline">
                                        <li class="list-inline-item">
                                            <a href="comp_view_calander.jsp"><button type="button" class="btn btn-info"><i class="fa fa-calendar" aria-hidden="true"></i>&nbsp;Calendar</button></a>
                                            <button type="submit" class="btn btn-info">Edit Event</button>
                                        </li>

                                    </ul>
                                    <!-- /.social -->
                                </div>
                            </div>
                        </div>
                    </form>
                    <%}%>
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container -->
        </section>

    </body>
</html>

