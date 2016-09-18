<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
    <title>W6 analysis</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    
    <script type="text/javascript" src="scripts/canvasjs.min.js"></script>
    <!--<script src="scripts/report-page.js"></script>-->
    
     <script type="text/javascript">
        window.onload = function () {
            var chart = new CanvasJS.Chart("chartContainer",
                    {
                        theme: "theme2",
                        title:{
                            text: "Number of Events"
                        },
                        animationEnabled: true,
                        axisX: {
                            valueFormatString: "D",
                            interval:1,
                            intervalType: "day"

                        },
                        axisY:{
                            includeZero: false,
                            interval:1
                        },
                        data: [
                            {
                                type: "line",
                                lineThickness: 3,
                                dataPoints: [
                                    <c:forEach items="${summary}" var="event">          
                                         { x: new Date(${year}, ${monthNum}, ${event.day}), y: ${event.value}, 
                                         <c:choose>
                                            <c:when test="${event.dayType == 'worstDay'}">
                                                indexLabel: "worst day",markerColor: "red", markerType: "triangle"}
                                            </c:when>    
                                            <c:otherwise>
                                                }
                                            </c:otherwise>
                                        </c:choose>
                                            ,
                                    </c:forEach>
                                ]
                            }


                        ]
                    });

            chart.render();
        }
    </script>
    
    <link href="http://getbootstrap.com/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/report.css">

</head>

<body >
<div class="container">
    <div class="resume">

            <header class="page-header">
                <img src="logo/Logo/W6.png" width="100" ><h1 class="page-title">The Aid Security</h1>
                <small> <i class="fa fa-clock-o"></i> Monthly News Brief on: <time>${month} of ${year}</time></small>
            </header>

        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-offset-1 col-md-10 col-lg-offset-2 col-lg-8">
                <c:forEach items="${events}" var="event">
                    <div class="bs-callout bs-callout-danger">
                        <div class="row" style = "margin-top: 5px">
                            <div class="col-md-8"><h4 style="color: black">Title:
                                <span style ="color: #711a05" id = "event-title"> ${event.title}
                                </span>
                            </h4>
                            </div>
                            <div class="col-md-4 text-right"><strong>ID:</strong> ${event.id}</div>
                        </div>
                        <a class="list-group-item inactive-link" style="color: black" href="#">
                            <h4 class="list-group-item-heading" style="color: black">Description</h4>
                            <hr>
                            ${event.description}
                        </a>
                        <div class="row" style = "margin-top: 15px">
                            <div class="col-md-6"><strong>Time: </strong>${event.calendar.time}</div>
                            <div class="col-md-6 text-right"><strong>Country/Region: 
                                </strong>${event.country}/${event.region}</div>
                        </div>
                        <hr>
                        <ul class="list-inline" style = "margin-top: 5px">
                            <c:forEach items="${event.sourses}" var="sourse">
                                <li class="list-group-item">${sourse}</li>
                            </c:forEach>
                        </ul>
                    </div>
                </c:forEach>
                <div class="bs-callout bs-callout-danger">
                        <h4>Summary on ${year} ${month}</h4>
                        <div id="chartContainer" style="height: 300px; width: 100%;">
                        </div>
                        <table class="table table-striped table-responsive ">
                            <tbody>
                            <tr>
                                <td>Events amount.</td>
                                <td>${events.size()}</td>
                            </tr>
                            <tr>
                                <td>Something else</td>
                                <td>may it will be helpful</td>
                            </tr>
                            <tr>
                                <td>Something else</td>
                                <td>may it will be helpful</td>
                            </tr>
                            <tr>
                                <td>Something else</td>
                                <td>may it will be helpful</td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

            </div>
        </div>

        <footer class="footer">
                <div class="container">
                    <p class="text-center">Reported by W6-Assess, 2016.</p>
                </div>
        </footer>

    </div>

</div>

</body>
</html>
