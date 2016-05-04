<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Project</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
    <script src="../js/jquery.knob.js"></script>
  </head>

  <body>

    <%@ include file="/jsp/header.jsp" %>

    <div class="container">
	    <form method="post">
	      <div class="row">
	        <div class="col-md-8">
	          <div>
	          <h2>
	          	<input type="text" name="titleProject" placeholder="Titre du projet"/>
	          </h2>
	          <div class="col-xs-12" style="height:20px;"></div>
	          <div class="sub-container">
	            <h3> Objectif du projet</h3>
	            <p> <input type="text" name="objectifDescriptionProject" placeholder="Description de l'objectif"/></p>
	          </div>
	          <div class="sub-container">
	            <h3>Public concerné</h3>
	            <p><input type="text" name="concernedPublic" placeholder="Public concerné"/></p>
	          </div>
	          <div class="sub-container">
	            <h3>Le Projet</h3>
	            <p><input type="text" name="descriptionProject" placeholder="Description du projet"/></p>
	          </div>
	          <div class="sub-container">
	            <h3>Sous-projets </h3>
	            <div class="sub-sub-container">
	              <h4>Nom du 1er sous-projet</h4>
	              <p>Description...</p>
	            </div>
	            <div class="sub-sub-container">
	              <h4>Nom du 2ème sous-projet</h4>
	              <p>Description...</p>
	            </div>
	          </div>
	          <div class="sub-container">
	            <h3>Partenaires du projet</h3>
	            <p><input type="text" name="partnersProject" placeholder="Partenaires du projet"/></p>
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
	            <img src="../img/img1.jpg" class="img-rounded" alt="Responsive image">
	          </div>
	          <div class="col-xs-12" style="height:50px;"></div>
	          <h3>Objectif financier du projet</h3>
	          <input type="text" name="goalProject" placeholder="Montant à atteindre" />
	          <div class="col-xs-12" style="height:20px;"></div>
	          <p>
	            <a class="btn btn-lg formbtn" href="/epvnProject/donation/init" role="button">Créer ce projet</a>
	          </p>
	          <div class="col-xs-12" style="height:50px;"></div>
	          <div>
	            <img src="../img/map.png" class="img-rounded" alt="Responsive image">
	          </div>
	          <div class="col-xs-12" style="height:50px;"></div>
	          </div>
	        </div>
	      </div>
      </form>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script>
    $(document).ready(function() {
        $(".dial").knob({
          'width' : 200,
          'height' : 200,
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