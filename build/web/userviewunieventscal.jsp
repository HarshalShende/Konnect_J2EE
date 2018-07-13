<%-- 
    Document   : asasa
    Created on : Jul 12, 2018, 5:01:10 PM
    Author     : Saroj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset='utf-8' />
        <link href='bootstrap/css/fullcalendar.min.css' rel='stylesheet' />
        <link href='bootstrap/css/fullcalendar.print.min.css' rel='stylesheet' media='print' />
        <script src='bootstrap/js/moment.min.js'></script>
        <script src='bootstrap/js/jquery.min.js'></script>
        <script src='bootstrap/js/fullcalendar.min.js'></script>
        <script>

            $(document).ready(function () {

                $('#calendar').fullCalendar({
                    defaultDate: '2018-07-01',
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    events: "user_uni_event_cal"
                });

            });
        </script>
        <style>

            body {
                margin: 40px 10px;
                padding: 0;
                font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
                font-size: 14px;
            }

            #calendar {
                max-width: 900px;
                margin: 0 auto;
            }

        </style>
    </head>
    <body>

        <div id='calendar'></div>

    </body>
</html>

