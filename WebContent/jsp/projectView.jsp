<%@page import="model.beans.project.Project" %>
<%@page import="model.beans.project.SubProject" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
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
    <script type="text/javascript" src="http://maps.google.com/maps/api/js?key=AIzaSyC_y7To4KBkKj6ebvdoU4iQqYh8Z8i-iQo"></script>
  </head>

  <body>

    <%@ include file="/jsp/header.jsp" %>

    <div class="container">
      <div class="row">
        <div class="col-md-8">
          <div>
	          <h2>
	          	<strong>
	          	<% 
	            	Project project = (Project) request.getAttribute("project");
    				out.println(project.getTitleProject());
	            %>
	            </strong>
	          </h2>
          <div class="col-xs-12" style="height:20px;"></div>
          <div class="sub-container">
            <h3> Objectif du projet</h3>
            <p> <% 
	            	out.println( project.getObjectifDescription() );
	            %>
	        </p>
          </div>
          <div class="sub-container">
            <h3>Public concerné</h3>
            <p>
            	<% 
            		out.println( project.getConcernedPublic() );
	            %>
			</p>
          </div>
          <div class="sub-container">
            <h3>Le Projet</h3>
            <p>
            	<% 
            		out.println( project.getDescriptionProject() );
	            %>
            </p>
          </div>
          <% if(project.getSubProjectList()!=null){
        	  out.println("<div class=\"sub-container\">"+
        			  "<h3>Sous-projets</h3>"        			  
          );
        	  for(SubProject subProject : project.getSubProjectList()){
        		  out.println("<div class=\"sub-sub-container col-md-9\">"+
        	  	  "<div class='col-md-6'>"+
                  "<h4>"+subProject.getTitle()+"</h4>"+
                  "<p>"+subProject.getDescription()+"</p>"+
                  "</div><div class='col-md-6 align-center'>"+
                  "<div class='progress'><div class='progress-bar' role='progressbar' aria-valuenow='"+Math.round(subProject.getActualAchievedGoal()/subProject.getGoal()*100)+"' aria-valuemin='0' aria-valuemax='100' style='width:"+Math.round(subProject.getActualAchievedGoal()/subProject.getGoal()*100)+"%;'>"+Math.round(subProject.getActualAchievedGoal()/subProject.getGoal()*100)+"%</div></div>"+
                  "<p><strong>Dons : "+subProject.getActualAchievedGoal()+"/"+subProject.getGoal()+" euros</strong></p>"+
                  "<a class='btn btn-sm formbtn btn-sub-project' href='/epvnProject/donation/init' role='button'>Soutenir ce sous-projet</a>"+
                  "</div>"+
                "</div>");
        	  }
        	  out.println("</div>");
          }
          %>
          
          <div class="sub-container">
            <h3>Partenaires du projet</h3>
            <p><% 
	            	out.println( project.getPartnersProject() );
	            %>
	        </p>
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
            <img src="<%out.println(project.getPicturePath()); %>" class="img-rounded" alt="Responsive image">
          </div>
          <div class="col-xs-12" style="height:50px;"></div>
          <h3>Avancement du projet</h3>
          <input type="text" data-width="90%" value="<%
          out.println(Math.round((project.getActualAchievedGoal()/project.getGoal())*100));
	            %>" class="dial">
          <div class="col-xs-12" style="height:20px;"></div>
          <p><strong>Total des dons : 
          		<%
	            	out.println( project.getActualAchievedGoal() );
	            	out.println( "/"+project.getGoal()+" euros");
	            %></strong></p>
          <p>
            <a class="btn btn-lg formbtn" href="/epvnProject/donation/init" role="button">Soutenir ce projet</a>
          </p>
          <div class="col-xs-12" style="height:50px;"></div>
          <div id="map_canvas"></div>
          <div class="col-xs-12" style="height:50px;"></div>
          </div>
        </div>
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
          'fgColor' : '#6cb874',
          'inputColor' : '#6cb874',
          'readOnly' : true,
          'format' : function (value) {
            return value + '%';
          },
          'change' : function (value) {
            return value + '%';
            console.log("changed :" + $('.dial').val());
          }
        });
        <%String latLngStr = project.getLatLng();%>
        var latLng ="<%=latLngStr%>";
        console.log(latLng);
        latLng = latLng.split("/");
        var location = new google.maps.LatLng(latLng[0],latLng[1]);
        var map = new google.maps.Map(document.getElementById("map_canvas"), {
            zoom: 6,
            center: location,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });   
        var marker = new google.maps.Marker({
			position: location,
            map: map,
        });
        marker.setMap(map);
    });
    $(window).resize(function(){
    	console.log("resize motherfucker");
    	//$(".dial").trigger('configure', {'fgColor':'red'});
    	console.log($('.dial').val());
    	$(".dial").trigger('change');
    	console.log($('.dial').val());
    	
    });
    </script>
  </body>
</html>