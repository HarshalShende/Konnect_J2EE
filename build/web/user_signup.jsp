<%-- 
    Document   : user_signup
    Created on : Jul 1, 2018, 4:28:27 PM
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
        <div style="widows: 650px;margin: 0 auto;display: table;">
            <form name="myform" action="user_sign_up" method="POST" onsubmit="return vali()">
                <table>
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
                        <td><input type="submit" value="sign in" /></td>
                        <td><input type="reset" value="cansel" /></td>
                    </tr>

                </table>

            </form>
        </div>
        <%= request.getParameter("message") %> 
        
        <a href="index2.jsp">back to home</a>
    </body>
</html>
