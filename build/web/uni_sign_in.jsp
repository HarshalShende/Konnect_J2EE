<%-- 
    Document   : uni_sign_in
    Created on : Jul 8, 2018, 11:31:55 AM
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
        <form action="unisignin" method="POST">
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
                        <td><input type="submit" value="sign in" /></td>
                        <td></td>
                    </tr>
                
            </table>

        </form>
    </body>
</html>
