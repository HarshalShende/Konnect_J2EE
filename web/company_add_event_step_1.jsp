<%-- 
    Document   : uni_add_event
    Created on : Jul 8, 2018, 3:53:03 PM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
    </head>
    <body>
        <h1>Step 1 of 3</h1>
        <form action="comp_event_controller" method="POST">
            <table>

                <tr>
                    <td>title</td>
                    <td><input type="text" name="title" value="" /></td>
                </tr>
                <tr>
                    <td>type</td>
                    <td><input type="text" name="type" value="" /></td>
                </tr>
                <tr>
                    <td>contact</td>
                    <td><input type="text" name="cnum" value="" /></td>
                </tr>
                <tr>
                    <td>location name</td>
                    <td><input type="text" name="location" value="" /></td>
                </tr>
                <tr>
                    <td>address</td>
                    <td>
                        <textarea name="address" rows="4" cols="20">
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td>start time</td>
                    <td><input type="date" name="startdate" value="" /></td>
                    <td>at</td>
                    <td><input type="time" name="starttime" value="" /></td>
                </tr>
                <tr>
                    <td>end time</td>
                    <td><input type="date" name="enddate" value="" /></td>
                    <td>at</td>
                    <td><input type="time" name="endtime" value="" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td>
                        <textarea name="desc" rows="4" cols="20">
                        </textarea>
                    </td>
                </tr>
              
                <tr>
                    <td><input type="submit" value="submit" /></td>
                </tr>

            </table>

        </form>
        <%= request.getParameter("message")%>
    </body>
</html>
