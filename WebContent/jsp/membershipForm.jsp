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
	<%@page import="model.beans.donation.Donation"%>
	<%Donation donationToPass = new Donation(); 
	donationToPass=(Donation) request.getAttribute("donationForm"); 
	%>

	<div class="container"
		style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

		<h2>
			<strong>Formulaire d'adhésion</strong>
		</h2>
	</div>

	<form id="createDonationForm" enctype="mutlipart/form-data">
				
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="form-group">
				<label>Je suis une entreprise</label> <input type="checkbox"
					id="isCompany" name="isCompany" value="yes" checked="<%out.print(donationToPass.getSiren()!=null);%>"/>
			</div>
		</div>

		<div class="toggle-company" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="companyName">Nom de l'entreprise *</label> <input
						type="text" class="form-control mandatory" name="companyName"
						onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getCompanyName());%>"/>
				</div>
				<div class="form-group">
					<label for="sirenNum">Numero de Siren *</label> <input type="text"
						class="form-control mandatory" name="sirenNumber"
						onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getSiren());%>"/>
				</div>
				<div class="form-group">
					<label for="lastnameEmployee">Nom de l'employé*</label> <input
						type="text" class="form-control mandatory" name="lastName"
						placeholder="Nom employé" onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getLastName());%>"/>
				</div>
				<div class="form-group">
					<label for="firstnameEmployee">Prénom de l'employé*</label> <input
						type="text" class="form-control mandatory"
						name="firstName" placeholder="Prénom employé"
						onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getFirstName());%>"/>
				</div>
			</div>
		</div>
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="toggle-company">
				<div class="form-group">
					<label for="lastname">Nom *</label> <input type="text"
						class="form-control mandatory" name="lastname" placeholder="Nom"
						onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getLastName());%>"/>
				</div>
				<div class="form-group">
					<label for="firstname">Prénom *</label> <input type="text"
						class="form-control mandatory" name="firstname"
						placeholder="Prénom" onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getFirstName());%>"/>
				</div>
			</div>
			<div class="form-group">
				<label for="email">Adresse E-mail *</label> <input type="email"
					class="form-control mandatory" name="email" placeholder="Email"
					onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getMailAddress());%>"/>
			</div>
			<div class="form-group">
				<label for="adress">Adresse *</label> <input type="text"
					class="form-control mandatory" name="address" placeholder="Adresse"
					onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getAddress());%>"/>
			</div>
			<div class="form-group">
				<label for="zip">Code Postal *</label> <input type="number"
					class="form-control mandatory" name="zip" placeholder="Code Postal"
					onblur="checkIfEmpty(this);" maxlength="5" value="<%out.print(donationToPass.getZipCode());%>"/>
			</div>
			<div class="form-group">
				<label for="city">Ville *</label> <input type="text"
					class="form-control mandatory" name="city" placeholder="Ville"
					onblur="checkIfEmpty(this);" value="<%out.print(donationToPass.getCity());%>"/>
			</div>
			<div class="form-group">
				<label for="country">Pays *</label> <input type="text"
					class="form-control mandatory" name="country" placeholder="Pays"
					onblur="checkIfEmpty(this);" value="<%//TODO %>"/>
			</div>
			<div class="form-group">
				<label for="phone">Téléphone</label> <input type="text"
					class="form-control" name="phone" placeholder="Téléphone" maxlength="10"value="<%out.print(donationToPass.getPhoneNumber());%>"/>
			</div>
		</div>
		
		<div class="toggle-membership">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="amountM">Montant *</label> <input type="text"
						class="form-control mandatory" name="amountM" value="<%out.print(donationToPass.getValue()+20.00);%>""
						onblur="checkIfEmpty(this);" disabled/>
				</div>
				<div class="form-group">
					<label >OU</label>
				</div>
				<div class="form-group">
				<label>Je suis déjà adhérente à l'association</label> 
				<input type="file"
						class="form-control" name="pj1" />

			</div>
			</div>
		</div>
		

		<div class="container">
			<input type="button" onclick="createDonation();"
				class="btn btn-default" value="Je confirme adhérer à l'association" />
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
		
		$("#isCompany").change(function() {

			$(".toggle-company").toggle(600);

		});
	</script>
	<script type="text/javascript">
		//functions for submit
		function createDonation() {

			var donationForm = document.getElementById('createDonationForm');
			var mandatoryFieldMissing = true;
			var createDonation = "/epvnProject/donation/becomeMember";
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
