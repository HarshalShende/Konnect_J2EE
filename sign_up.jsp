<%-- 
    Document   : sign_up
    Created on : Jun 11, 2018, 2:36:19 PM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en" style="height:100%;">
    <head> 
        <meta charset="utf-8"> 
        <title>Konnect</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="keywords" content="meetup,connect,pople,universities" />
        <meta name="description" content="Konnect" />
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
        <section id="promo-3" class="content-block promo-1 min-height-600px bg-white">
            <div class="container">
                <div class="row">
                    <div class="col-md-4"> 
</div>
                    <div class="col-md-4">
                        <h1 align='center'>Konnect</h1> 
                    </div>
                    <div class="col-md-4"> 
</div>
                </div>
                <br>
                <ul class="nav nav-tabs text-center" role="tablist" id="myTab">
                    <li class="active">
                        <a href="#tab1" role="tab" data-toggle="tab">Viewer</a>
                    </li>
                    <li>
                        <a href="#tab2" role="tab" data-toggle="tab">university</a>
                    </li>
                    <li>
                        <a href="#tab3" role="tab" data-toggle="tab">company</a>
                    </li>
                </ul>
                <div class="tab-content">
                    <div class="tab-pane fade in active" id="tab1">
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1 col-sm-6">
</div>
                            <!-- /.col -->
                            <div class="col-md-5 col-sm-5">
                                <h3>Welcome Viewer</h3>
                                <p>Hello there! register for Konnect and get in touch with awesome events. Jusi Sign Up</p>
                                <form role="form"> 
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputEmail1">Email address</label>                                         
                                        <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Enter email"> 
                                    </div>                                     
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputPassword1">Password</label>                                         
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> 
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput621">ConfirmPassword</label>
                                        <input type="password" class="form-control" id="formInput621" placeholder="confirm Password">
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput298">Name</label>
                                        <input type="text" class="form-control" id="formInput298" placeholder="Enter name">
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput351">University</label>                                         
                                        <select id="formInput351" class="form-control"> 
                                            <option>NSBM</option>                                             
                                            <option>UOM</option>                                             
                                            <option>UOC</option>                                             
                                        </select>
                                    </div>                                     
                                    <button type="submit" class="btn btn-default">Sign up</button>                                     
                                </form>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /#tab1 -->
                    <div class="tab-pane fade" id="tab2">
                        <div class="row">
                            <!-- /.col -->
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1 col-sm-6">
</div>
                            <!-- /.col -->
                            <div class="col-md-5 col-sm-5">
                                <h3>University</h3>
                                <p>Welcome to Konnect , you can manage your convocations semester plans right here and connect with industries too.. Just Sign Up</p>
                                <form role="form"> 
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputEmail1">Name of University</label>                                         
                                        <input type="text" class="form-control" id="exampleNameInput" placeholder="Enter name"> 
                                    </div>                                     
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputPassword1">Password</label>                                         
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> 
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput298">Confirm Password</label>
                                        <input type="password" class="form-control" id="formInput298" placeholder="confirm Password">
                                    </div>                                     
                                    <button type="submit" class="btn btn-default">Sign up</button>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput660"></label>
                                        <input type="hidden" class="form-control">
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput660"></label>
                                        <input type="hidden" class="form-control">
                                    </div>                                     
                                </form>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                        <!-- /.row -->
                    </div>
                    <!-- /#tab2 -->
                    <div class="tab-pane fade" id="tab3">
                        <div class="row">
                            <!-- /.col -->
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-md-offset-1 col-sm-6">
</div>
                            <!-- /.col -->
                            <div class="col-md-5 col-sm-5">
                                <h3>Company</h3>
                                <p>Welcome to Konnect , you can manage and post your events , workshops meetups... you name it, in here. Just Sign up here</p>
                                <form role="form"> 
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputEmail1">Name of University</label>                                         
                                        <input type="text" class="form-control" id="exampleNameInput" placeholder="Enter name"> 
                                    </div>                                     
                                    <div class="form-group"> 
                                        <label class="control-label" for="exampleInputPassword1">Password</label>                                         
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password"> 
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput298">Confirm Password</label>
                                        <input type="password" class="form-control" id="formInput298" placeholder="confirm Password">
                                    </div>                                     
                                    <button type="submit" class="btn btn-default">Sign up</button>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput660"></label>
                                        <input type="hidden" class="form-control">
                                    </div>
                                    <div class="form-group"> 
                                        <label class="control-label" for="formInput660"></label>
                                        <input type="hidden" class="form-control">
                                    </div>                                     
                                </form>
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /#tab3 -->
                    <!-- /#tab4 -->
                </div>
                <!-- /.tab-content -->
            </div>
        </section>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>         
        <script type="text/javascript" src="js/bootstrap.min.js"></script>         
        <script type="text/javascript" src="js/plugins.js"></script>
        <script src="https://maps.google.com/maps/api/js?sensor=true"></script>
        <script type="text/javascript" src="js/bskit-scripts.js"></script>         
    </body>     
</html>

