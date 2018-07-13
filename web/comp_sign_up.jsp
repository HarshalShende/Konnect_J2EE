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
            <form name="myform" action="company_sign_up" method="POST" onsubmit="return vali()">
                <table>
                    <tr>
                        <td>name</td>
                        <td><input type="text" name="name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
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
                        <td><input type="submit" value="sign in" /></td>
                        <td><input type="reset" value="cansel" /></td>
                    </tr>

                </table>

            </form>
        </div>
        <%= request.getParameter("message") %> 
        
        <a href="index3.jsp">back to home</a>
    </body>
</html>
