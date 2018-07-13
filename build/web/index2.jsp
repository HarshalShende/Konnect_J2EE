<%-- 
    Document   : index
    Created on : Jul 1, 2018, 4:53:08 PM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>

            h1{
                font-size: 120px;
                margin: 0 auto;
                display: table;
                widows: 500px;
            }    

            ul {
                list-style-type: none;
                margin: 0;
                padding: 0;
                overflow: hidden;
                background-color: #74b9ff;
            }

            li {
                float: left;
            }

            li a {
                display: block;
                color: #2d3436;
                text-align: center;
                padding: 16px;
                text-decoration: none;
            }

            li a:hover {
                background-color: #0984e3;
            }
        </style>
    </head>
    <body>

        <ul>
            <li><a href="user_signup.jsp">user sign up</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="ideahub.jsp">post an idea</a></li>
            <li><a href="viewuseridea">view idea</a></li>
            <li><a href="sponsored">view sponsored</a></li>
            <li><a href="userviewevents">view university events</a></li>
            <li><a href="userviewcompevents">view company events</a></li>
            <li><a href="logout">logout</a></li>
            
            <li style="position: absolute;left: 40em;"><a href="#"><%= request.getParameter("message")%>  </a></li>
            <li style="position: absolute;left: 45em;"><a href="#"><%= request.getParameter("err")%>  </a></li>
            <li></li>
        </ul>
        
    </body>
</html>
