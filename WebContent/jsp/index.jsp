<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Index</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
    <script src="../js/jquery.knob.js"></script>
  </head>

  <body>
	<jsp:include page="header.jsp" />

    <div class="container">
      <h2><strong>Faire un don à l'association</strong></h2>
      <p>Des explications...</p>
      <p class="align-center">
        <a class="btn btn-lg formbtn" href="../donation/init" role="button">Formulaire de don</a>
      </p>
    </div> <!-- /container -->

    <div class="container">
      <h2><strong>Soutenir un projet</strong></h2>
      <p>Des explications...</p>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Nom du projet">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button"><span class="glyphicon glyphicon-search"/></button>
        </span>
      </div><!-- /input-group -->
      <div class="col-xs-12" style="height:30px;"></div>

      <section>
        <article>
          <div class="row">
          	<%@ page import="model.beans.project.Project"%>
          	<%@ page import="java.util.ArrayList"%>
          	<% ArrayList<Project> collec =  (ArrayList<Project>) request.getAttribute("projectsList");
          	   for(Project project : collec) { %>
          		<div class="col-md-4 project-item">
	             <div class="project-img">
	               <a href="../project/consult"><img src="../img/img1.jpg" class="img-rounded" alt="Responsive image"></a>
	             </div>
	             <div class="col-xs-12" style="height:10px;"></div>
	             <div class="under-img-txt">
	               <div class="col-md-8">
	                 <div><a href="./project.jsp">
	                 	<strong>
	                 		<% out.println(project.getTitleProject()); %>
	     				</strong></a></div>
	                 <span class="label label-success">Education</span>
	                 <span class="label label-success">Santé</span>
	               </div>
	               <input type="text" data-width="30%" value="<% out.println(project.getActualAchievedGoal()/project.getGoal()*100); %>" class="dial">
	             </div>
	           </div>
          	<% } %>
          </div>
        </article>
        <div class="col-xs-12" style="height:20px;"></div>
      </section>
      <div class="col-xs-12" style="height:50px;"></div>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script>
    $(function() {
        $(".dial").knob({
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