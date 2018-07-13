<%-- 
    Document   : company_add_event_step_2
    Created on : Jul 13, 2018, 9:45:34 PM
    Author     : Saroj
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.unieventbean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script type="text/javascript">
        function showImage() {
            if (this.files && this.files[0]) {
                var obj = new FileReader();
                obj.onload = function (data) {
                    var image = document.getElementById("image");
                    image.src = data.target.result;
                    image.style.display = "block";
                }
                obj.readAsDataURL(this.files[0]);
            }
        }
    </script>
    <body>
        <h1>Step 2 of 3</h1>
        <table border="1">
            <% String x = "";%>
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
                <td><%=post.getUniid()%></td>
                <% x = post.getEid();%>



            </tr>
            <%}%>
        </table>
        <form action="comp_event_image_controller" method="POST" enctype="multipart/form-data">
            <table>
                <tr>
                    <td>id</td>
                    <td><input type="text" name="id" value="<% out.print(x); %>" readonly="readonly" /></td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td><input type="file" name="picture" value="" onchange="showImage.call(this)"/></td>
                </tr>
                <tr>
                    <td>preview</td>
                    <td><img src="" style="display: none;" height="200;" id="image"></td>
                </tr>
                <tr>
                    <td><input type="submit" value="upload" /></td>
                        <% unieventbean un = new unieventbean();
                        un.setEid(x);%>

                </tr>
            </table>
        </form>

    </body>
</html>

