<%-- 
    Document   : user_header
    Created on : Jul 5, 2018, 9:16:27 PM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en" style="height:100%;" wp-site wp-site-is-master-page>
    <head> 
        <meta charset="utf-8"> 
        <title>Konnect || Company</title>
         
        <!-- Core CSS -->         
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="css/font-awesome.min.css" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,400,300,600,700" rel="stylesheet">
        <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet">
        <!-- Style Library -->         
        <link href="css/style-library-1.css" rel="stylesheet">
        <link href="css/plugins.css" rel="stylesheet">
        <link href="css/blocks.css" rel="stylesheet">
        <link href="css/custom.css" rel="stylesheet">
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->         
        <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->         
    </head>     
    <body data-spy="scroll" data-target="nav">
        <header id="header-2" class="soft-scroll header-2" wp-cz-section="blocks_header_2" wp-cz-section-title="Header 2">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <h1>Konnect</h1>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="navbar-collapse">
                        <ul class="nav navbar-nav navbar-right" wp-nav-menu="primary" wp-nav-menu-depth="2" wp-nav-menu-type="bootstrap">
                            <li class="nav-item ">
                                <a href="comp_login.jsp">Login</a>
                            </li>
                            <li class="nav-item">
                                <a href="comp_sign_up.jsp">company sign up</a>
                            </li>
                            <li class="nav-item">
                                <a href="listidea">view an idea</a>
                            </li>
                            <li class="nav-item">
                                <a href="view_my_sponsored">view sponsored ideas</a>
                            </li>
                            <li class="nav-item">
                                <a href="clogout">logout</a>
                            </li>                            
                            <li class="nav-item">
                                 <a href="#"><%= request.getParameter("message")%></a>
                            </li>
                            <li class="nav-item">
                                 <a href="#"><%= request.getParameter("err")%>  </a></a>
                            </li>
                        </ul>
                    </div>
                    
                </div>
                <!-- /.container-fluid -->
            </nav>
        </header>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>         
        <script type="text/javascript" src="js/bootstrap.min.js"></script>         
        <script type="text/javascript" src="js/plugins.js"></script>
        <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript" src="js/bskit-scripts.js"></script>         
    </body>     
</html>

