<%-- 
    Document   : unisignup
    Created on : Jul 8, 2018, 9:39:04 AM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <script>
            function vali() {
                var pass = document.forms["myform"]["pass"].value;
                var cpass = document.forms["myform"]["cpass"].value;
                if (cpass == "") {
                    alert("password bruh");
                    return false;
                }
                
                if (cpass != pass) {
                    alert("passwords must match");
                    return false;
                }
            }
        </script>
    </head>
    <body>
        <form action="uni_sign_up" method="POST" name="myform" onsubmit="return vali()">
            <table>
                    <tr>
                        <td>name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>email</td>
                        <td><input type="email" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>contact number</td>
                        <td><input type="text" name="cnum" value="" /></td>
                    </tr>
                    <tr>
                        <td>username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>confirm password</td>
                        <td><input type="password" name="cpass" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="sign up" /></td>
                        <td></td>
                    </tr>
               
            </table>

        </form>
        <%= request.getParameter("message") %> 
    </body>
</html>
