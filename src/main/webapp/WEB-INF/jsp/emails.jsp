<html lang="en">
    <head>
        <title>W6 analysis</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../css/style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12 header" id="header">
                    <h1 id="logo">
                        <img id="logo" class="logo" src="../logo/Logo/W6.png"/>
                    </h1>
                    <h2 id="site-name">W6 assess</h2>
                    <h4 id="site-slogan">news based security profiling</h4>
                </div>
                     <div>
                    <div class="row">
                        <div class="col-sm-6">
                            <div class="form-group">
                              <div class="col-sm-6">
                                <table id="emailsTable" class="table table-hover" style = "overflow:scroll">
                                  <thead>
                                    <tr>
                                      <th>Id</th>
                                      <th>From</th>
                                      <th>Date</th>
                                      <th>Subject</th>
                                    </tr>
                                  </thead>
                                  <tbody id="emails">
                                  </tbody>
                                </table>
                              </div>
                            <form action="input" method="GET" id="input_form" hidden>
                                <input id = "email_id" name="email_id">
                            </form>
                                <script>
                                  window.onload = function () {
                                      var emailsArray =${emails};
                                      var i;
                                      var output = "";
                                      for (i = 0; i < emailsArray.length; i++) {
                                          output += "<tr>";
                                          var id = emailsArray[i].id,
                                          subject = emailsArray[i].subject,
                                          date = emailsArray[i].date,
                                          from = emailsArray[i].from;

                                          if (id !== null) {
                                            output += "<td>" + id + "</td>";
                                          }
                                          if (subject !== null) {
                                            output += "<td>" + from + "</td>";
                                          }
                                          if (date !== null) {
                                            output += "<td>" + date + "</td>";
                                          }
                                          if (from !== null) {
                                            output += "<td>" + subject + "</td>";
                                          }
                                          output+="</tr>"
                                      }
                                      document.getElementById("emails").innerHTML = output;
                                    }

                                    $(document).ready(function() {
                                        $("#emailsTable tbody").delegate('tr', 'click', function() {
                                            var id = $(this).find("td").first()[0].innerText;
                                            document.getElementById("email_id").value = id;
                                            document.getElementById("input_form").submit();
                                        });
                                    });
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>