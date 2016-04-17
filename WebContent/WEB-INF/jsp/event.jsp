<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Event</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">
    <script src="jquery.knob.js"></script>
  </head>

  <body>

    <jsp:include page="header.jsp" />
    
    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div>
          <h2><strong>Titre de l'évènement</strong></h2>
          <div class="col-xs-12" style="height:20px;"></div>
          <div class="sub-container">
            <h3> Objectif de l'évènement</h3>
            <p> Description...</p>
          </div>
          <div class="sub-container">
            <h3>Public concerné</h3>
            <p>Description...</p>
          </div>
          <div class="sub-container">
            <h3>L'évènement</h3>
            <p>Description...</p>
          </div>
          <div class="sub-container">
            <h3>Projet associé</h3>
            <p>Description...</p>
            <div class="row">
            <div class="col-md-6 project-item">
              <div class="project-img">
                <a href="./project.jsp"><img src="./img/img1.jpg" class="img-rounded" alt="Responsive image"></a>
              </div>
              <div class="col-xs-12" style="height:10px;"></div>
              <div class="under-img-txt">
                <div class="col-md-8">
                  <div><a href="./project.jsp"><strong>Titre du projet...</strong></a></div>
                  <span class="label label-success">Education</span>
                  <span class="label label-success">Santé</span>
                </div>
                <input type="text" value="69" class="dial">
              </div>
            </div>
            </div>
          </div>
          <div class="sub-container">
            <h3>Partenaires de l'évènement</h3>
            <p>Description...</p>
          </div>
          <div class="sub-container">
            <h3>Contact EVPN</h3>
            <p>Si vous êtes intéressés par ce projet vous pouvez nous écrire à parrainage@epvn.org.</p>
          </div>
          </div>
        </div>
        <div class="col-md-4">
          <div style="text-align:center">
          <div class="col-xs-12" style="height:15px;"></div>
          <div>
            <img src="./img/event.png" class="img-rounded" alt="Responsive image">
          </div>
          <div class="col-xs-12" style="height:50px;"></div>
          <h3>Tarification</h3>
          <p>Les différents moyens de participer...</p>
          <p>
            <a class="btn btn-lg formbtn" href="./form.html" role="button">Participer à cet évènement</a>
          </p>
          <div class="col-xs-12" style="height:50px;"></div>
          <div>
            <img src="./img/map.png" class="img-rounded" alt="Responsive image">
          </div>
          </div>
        </div>
        <div class="col-xs-12" style="height:50px;"></div>
      </div>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script>
    $(document).ready(function() {
        $(".dial").knob({
          'width' : 75,
          'height' : 75,
          'fgColor' : '#6cb874',
          'inputColor' : '#6cb874',
          'readOnly' : true,
          'format' : function (value) {
            return value + '%';
          }
        });
    });
    </script>
  </body>
</html>