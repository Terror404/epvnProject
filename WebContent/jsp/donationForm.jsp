<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Formulaire</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7"
	crossorigin="anonymous">
<!--Custom styles for this template -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>

	<%@ include file="/jsp/header.jsp"%>

	<div class="container"
		style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

		<h2>
			<strong>Formulaire de don</strong>
		</h2>
	</div>

	<form id="createDonationForm" enctype="mutlipart/form-data">
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="form-group">
				<label for="typeDon">Type de don *</label> <select name="typeDon"
					id="typeDon" class="form-control">
					<option value="money">Monétaire</option>
					<option value="membership">Adhésion</option>
					<option value="time">Bénévolat</option>
					<option value="parainage">Parainage</option>
					<option value="other">Autre</option>
				</select>
			</div>
		</div>
		<%@page import="model.beans.project.Project"%>
		<%@page import="model.beans.project.SubProject"%>

		<div class="toggle-project">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="project">Projet *</label>
					<%
						Project project = (Project) request.getAttribute("project");
														    				if(project!=null){
														    					out.println("<p>"+project.getTitleProject()+"</p>");
														    					out.println("<input type=\"hidden\" value=\""+project.getIdProject()+"\"/>");
														    				}else{
														    					out.println("<input type=\"text\""+
														    							"class=\"form-control mandatory\" name=\"project\""+ 
														    							"placeholder=\"Nom du projet\" value=\"	\"/>"
														    					);
														    				}
					%>
				</div>

				<div class="form-group">
					<label for="subProject">Sous projets</label> <select
						name="subProject" class="form-control">
						<%
							if(project!=null){
								if(project.getSubProjectList()!=null){
											if(project.getSubProjectList().size()>0){
										for(SubProject subProject : project.getSubProjectList()){
							        		  out.println("<option value=\""+subProject.getIdSubProject()+"\">"+
							                  ""+subProject.getTitle()+""+
							                "</option>");
							        	  			}
										}
							    }
							}
						%>
					</select>
				</div>
			</div>
		</div>
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="form-group">
				<label>Je suis une entreprise</label> <input type="checkbox"
					id="isCompany" name="isCompany" value="yes" />
			</div>
		</div>

		<div class="toggle-company" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="companyName">Nom de l'entreprise *</label> <input
						type="text" class="form-control mandatory" name="companyName"
						onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="sirenNum">Numero de Siren *</label> <input type="text"
						class="form-control mandatory" name="sirenNum"
						onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="adress">Adresse *</label> <input type="text"
						class="form-control mandatory" name="addressCompany"
						placeholder="Adresse" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="zip">Code Postal*</label> <input type="number"
						class="form-control mandatory" name="zipCompany"
						placeholder="Code Postal" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="city">Ville *</label> <input type="text"
						class="form-control mandatory" name="cityCompany"
						placeholder="Ville" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="country">Pays *</label> <input type="text"
						class="form-control mandatory" name="countryCompany"
						placeholder="Pays" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="lastnameEmployee">Nom de l'employé*</label> <input
						type="text" class="form-control mandatory" name="lastnameEmployee"
						placeholder="Nom employé" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="firstnameEmployee">Prénom de l'employé*</label> <input
						type="text" class="form-control mandatory"
						name="firstnameEmployee" placeholder="Prénom employé"
						onblur="checkIfEmpty(this);" />
				</div>
			</div>
		</div>
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="toggle-company">
				<div class="form-group">
					<label for="lastname">Nom *</label> <input type="text"
						class="form-control mandatory" name="lastname" placeholder="Nom"
						onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="firstname">Prénom *</label> <input type="text"
						class="form-control mandatory" name="firstname"
						placeholder="Prénom" onblur="checkIfEmpty(this);" />
				</div>
			</div>
			<div class="form-group">
				<label for="email">Adresse E-mail *</label> <input type="email"
					class="form-control mandatory" name="email" placeholder="Email"
					onblur="checkIfEmpty(this);" />
			</div>
			<div class="form-group">
				<label for="adress">Adresse *</label> <input type="text"
					class="form-control mandatory" name="address" placeholder="Adresse"
					onblur="checkIfEmpty(this);" />
			</div>
			<div class="form-group">
				<label for="zip">Code Postal *</label> <input type="number"
					class="form-control mandatory" name="zip" placeholder="Code Postal"
					onblur="checkIfEmpty(this);" />
			</div>
			<div class="form-group">
				<label for="city">Ville *</label> <input type="text"
					class="form-control mandatory" name="city" placeholder="Ville"
					onblur="checkIfEmpty(this);" />
			</div>
			<div class="form-group">
				<label for="country">Pays *</label> <input type="text"
					class="form-control mandatory" name="country" placeholder="Pays"
					onblur="checkIfEmpty(this);" />
			</div>
			<div class="form-group">
				<label for="phone">Téléphone</label> <input type="text"
					class="form-control" name="phone" placeholder="Téléphone" />
			</div>
		</div>

		<div class="toggle-money">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="amount">Montant *</label> <input type="text"
						class="form-control mandatory" name="amount" placeholder="Montant"
						onblur="checkIfEmpty(this);" />
				</div>
			</div>
		</div>
		
		<div class="toggle-parainage">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
				<label for="orphanage">Orphelinat</label> <select
						name="orphenage" class="form-control">
						<% //TODO: choix des orphelinats %>
					</select>
				</div>
			</div>
		</div>
		
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="form-group">
				<label>Je souhaite adhérer l'association</label> <input
					type="checkbox" name="membership" name="membership1" value="yes" />

			</div>
		</div>

		<div class="toggle-membership" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="amountM">Montant *</label> <input type="text"
						class="form-control mandatory" name="amountM" value="20"
						onblur="checkIfEmpty(this);" disabled/>
				</div>
			</div>
		</div>

		<div class="toggle-time" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="hours">Nombre d'heures *</label> <input type="text"
						class="form-control mandatory" name="hours"
						placeholder="Nombre d'heures" onblur="checkIfEmpty(this);" />
				</div>
				<div class="form-group">
					<label for="pj1">Pièce jointe</label> <input type="file"
						class="form-control" name="pj1" />
				</div>
			</div>
		</div>

		<div class="toggle-other" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

				<div class="form-group">
					<label for="desc">Spécification du don *</label>
					<textarea name="desc" class="form-control mandatory" form="formid"
						onblur="checkIfEmpty(this);">Enter text here...</textarea>
				</div>
				<div class="form-group">
					<label for="pj2">Pièce jointe</label> <input type="file"
						class="form-control mandatory" name="pj2" />
				</div>
			</div>
		</div>

		<div class="container">
			<input type="button" onclick="createDonation();"
				class="btn btn-default" value="Faire un don" />
		</div>
	</form>

	<!-- /container -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script>
		$("#typeDon").change(function() {
			var type = $("#typeDon").val();
			if (type == "money") {
				$(".toggle-money").show();
				$(".toggle-membership").hide();
				$(".toggle-time").hide();
				$(".toggle-parainage").hide();
				$(".toggle-other").hide();
				$(".toggle-project").show();
			} else if (type == "membership") {
				$(".toggle-money").hide();
				$(".toggle-membership").show();
				$(".toggle-project").show();
				$(".toggle-time").hide();
				$(".toggle-parainage").hide();
				$(".toggle-other").hide();
			} else if (type == "time") {
				$(".toggle-money").hide();
				$(".toggle-membership").hide();
				$(".toggle-time").show();
				$(".toggle-project").show();
				$(".toggle-other").hide();
				$(".toggle-parainage").hide();
			} else if (type == "parainage") {
				$(".toggle-money").hide();
				$(".toggle-membership").hide();
				$(".toggle-project").hide();
				$(".toggle-other").hide();
				$(".toggle-parainage").show();

			} else if (type == "other") {
				$(".toggle-money").hide();
				$(".toggle-membership").hide();
				$(".toggle-time").hide();
				$(".toggle-other").show();
				$(".toggle-project").show();
				$(".toggle-parainage").hide();
			}
		});
		$("#isCompany").change(function() {

			$(".toggle-company").toggle(600);

		});
	</script>
	<script type="text/javascript">
		//functions for submit
		function createDonation() {

			var donationForm = document.getElementById('createDonationForm');
			var mandatoryFieldMissing = true;
			var createDonation = "/epvnProject/donation/do";
			console.log("Checking mandatory fields");
			/*
			var mandatoryFields = document.getElementsByClassName('mandatory');
			var i;
			for(i=0;i<mandatoryFields.length;i++){
				if((mandatoryFields[i].value =="" || mandatoryFields[i].value == null) && mandatoryFields[i].css('display') == 'none'){
					console.log(mandatoryFields[i].name);
					console.log(mandatoryFields[i].css('display'));
					mandatoryFieldMissing = false;
					mandatoryFields[i].style.border="3px solid red";
					mandatoryFields[i].placeholder="Ce champs est obligatoire. Merci de bien vouloir le remplir.";				      
				}
			}*/
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
				donationForm.action = createDonation;
				donationForm.method = "POST";
				donationForm.submit();
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
