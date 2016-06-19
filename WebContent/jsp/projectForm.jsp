<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Project</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!-- Custom styles for this template -->
<link href="../css/style.css" rel="stylesheet">
<script src="../js/jquery.knob.js"></script>
</head>

<body>

	<%@ include file="/jsp/header.jsp"%>

	<div class="container">
		<form id="createProjectForm" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-8">
					<div>
						<h2>
							<input type="text" name="titleProject"
								placeholder="Titre du projet" onblur="checkIfEmpty(this);"/>
						</h2>
						<div class="col-xs-12" style="height: 20px;"></div>
						<div class="sub-container">
							<h3>Objectif du projet</h3>
							<p>
								<input type="text" class="form-control mandatory" name="objectifDescriptionProject"
									placeholder="Description de l'objectif" onblur="checkIfEmpty(this);"/>
							</p>
						</div>
						<div class="sub-container">
							<h3>Public concerné</h3>
							<p>
								<input type="text" class="form-control mandatory" name="concernedPublic"
									placeholder="Public concerné" onblur="checkIfEmpty(this);"/>
							</p>
						</div>
						<div class="sub-container">
							<h3>Le Projet</h3>
							<p>
								<input type="text" class="form-control mandatory" name="descriptionProject"
									placeholder="Description du projet" onblur="checkIfEmpty(this);"/>
							</p>
							<p>
								<input type="text" class="form-control mandatory" name="categoryProject"
									placeholder="Catégorie du projet" onblur="checkIfEmpty(this);"/>
							</p>
						</div>
						<div class="sub-container">
							<h3>Sous-projets</h3>
							<p>
								<a class="btn formbtn" href="../project/consult" role="button"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Ajouter un sous-projet</a>
							</p>
						</div>
						<div class="sub-container">
							<h3>Partenaires du projet</h3>
							<p>
								<input type="text" class="form-control mandatory" name="partnersProject"
									placeholder="Partenaires du projet" onblur="checkIfEmpty(this);"/>
							</p>
						</div>
						<div class="sub-container">
							<h3>Contact EVPN</h3>
							<p>
								Si vous êtes intéressés par ce projet vous pouvez nous écrire à
								<input type="text" class="form-control mandatory" name="contactInformations"
									placeholder="Email du projet" onblur="checkIfEmpty(this);"/>.
							</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div style="text-align: center">
						<div class="col-xs-12" style="height: 15px;"></div>
						<div>
							<label><h3>Ajouter une image</h3></label>
							<input type="file" name="img">
						</div>
						<div class="col-xs-12" style="height: 50px;"></div>
						<h3>Objectif financier du projet</h3>
						<input type="text" class="form-control mandatory" name="goalProject"
							placeholder="Montant à atteindre" onblur="checkIfEmpty(this);"/>
						<label for="beginDate"> Date de début :</label>
						<input type="date" name="beginDate"/></br>
						<label for="endDate"> Date de fin :</label>
						<input type="date" name="endDate"/>
						<div class="col-xs-12" style="height: 20px;"></div>
						<div>
							<p><h3>Coordonnées du projet</h3></p>
							<label for="lat"> Latitude :</label>
							<input type="text" class="form-control mandatory" name="lat" placeholder="ex: 14.344490" onblur="checkIfEmpty(this);"/></br>
							<label for="lng"> Longitude :</label>
							<input type="text" class="form-control mandatory" name="lng" placeholder="ex: 107.980510" onblur="checkIfEmpty(this);"/>
						</div>
						<div class="col-xs-12" style="height: 50px;"></div>
						<p>
							<a class="btn btn-lg formbtn" onclick="createProject();"
								role="button">Créer ce projet</a>
						</p>
						<div class="col-xs-12" style="height: 50px;"></div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- /container -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script>
		$(document).ready(function() {
			$(".dial").knob({
				'width' : 200,
				'height' : 200,
				'fgColor' : '#6cb874',
				'inputColor' : '#6cb874',
				'readOnly' : true,
				'format' : function(value) {
					return value + '%';
				}
			});
		});
	</script>
	<script type="text/javascript">
		//functions for submit
		function createProject() {

			var projectForm = document.getElementById('createProjectForm');
			var mandatoryFieldMissing = true;
			var createProject = "/epvnProject/project/create";
			console.log("Checking mandatory fields");
			$(".mandatory:visible")
					.each(
							function() {
								console.log(this.name);
								if (this.value == "" || this.value == null) {
									mandatoryFieldMissing = false;
									this.style.border = "3px solid red";
									this.placeholder = "Ce champs est obligatoire. Merci de bien vouloir le remplir.";
								}

							});
			if (mandatoryFieldMissing == true) {
				projectForm.action = createProject;
				projectForm.method = "POST";
				projectForm.submit();
			}
		}
		//function to check the fields on blur
		function checkIfEmpty(field) {
			if (field.value == '') {
				field.style.border = "3px solid red";
				field.placeholder = "Ce champs est obligatoire. Merci de bien vouloir le remplir."
				console.log("mandatory field");
			} else {
				field.style.border = "1px solid #ccc";
				field.placeholder = "Ce champs est obligatoire. Merci de bien vouloir le remplir."

			}
		}
	</script>
</body>
</html>