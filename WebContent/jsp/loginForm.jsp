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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!--Custom styles for this template -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>
	<%@ include file="/jsp/header.jsp"%>
	<form id="createLoginForm" enctype="mutlipart/form-data" >
	<div class="container"
		style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

		<h2>
			<strong>Connexion</strong>
		</h2>
	</div>


		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

	 


				
					<div class="form-group">
						<label for="companyEmail">Adresse E-mail </label> <input type="email"
							class="form-control mandatory" id="email"name="email" placeholder="Email"
							onblur="verifMail(this);"maxlength="255" />
					</div>
					<div class="form-group">	<label for="PASSWORD">Mot de passe </label>
 <input type="password" class="form-control mandatory" id="password" name="password" id="password" onblur="verifPassword(this)"/>

		</div>
			<div class="checkbox">
				<label><input type="checkbox" name="membership"
					id="membership1" value="yes"> Se souvenir de moi</label>
			</div>

			 <input type="submit" value="Envoyer" onclick="createLogin();" class="btn btn-default"
				 />
				
<input type="submit" value="Déconnexion" onclick="destroySession();" class="btn btn-default"/>
	  </div>
	</form>
	
	 <%-- Vérification de la présence d'un objet utilisateur en session --%>
	  <c:if test="${!empty sessionScope.user}">
                    <p class="succes">Vous êtes connecté(e) avec l'adresse : ${sessionScope.user.mailAddress}</p>
</c:if>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
		
	<!-- Latest compiled and minified JavaScript -->
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"
		integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS"
		crossorigin="anonymous"></script>
	<script>
	function surligne(champ, erreur)

	{

	   if(erreur)
		   champ.style.border = "3px solid red";

	   else
		   champ.style.border = "1px solid #ccc";

	}
	function verifMail(champ)

	{

	   var regex = /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;

	   if(!regex.test(champ.value))

	   {

	      surligne(champ, true);
	      champ.placeholder = "Le mail n'est pas valide";
	      return false;

	   }

	   else

	   {

	      surligne(champ, false);

	      return true;

	   }

	}
	
	function verifPassword(champ)

	{

	   var regex = /^[a-zA-Z0-9._-]{8,}$/;

	   if(!regex.test(champ.value))

	   {
		   champ.placeholder = "Le mot de passe doit faire au moins 8 caractères";
	      surligne(champ, true);
	      
	      return false;

	   }

	   else

	   {

	      surligne(champ, false);

	      return true;

	   }

	}
	function destroySession(){
	var loginForm = document.getElementById('createLoginForm');
	var destroySession = "/epvnProject/connection/destroy";
	 alert ('Déconnexion réussie !');
	loginForm.action = destroySession;
	loginForm.method = "POST";
	loginForm.submit();
	}
		function createLogin() {

			var loginForm = document.getElementById('createLoginForm');
			var mandatoryFieldMissing = true;
			var createLogin = "/epvnProject/connection/login";
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
                alert ('Connexion réussie !');
				loginForm.action = createLogin;
				loginForm.method = "POST";
				loginForm.submit();
			}
		}
function verifLogin()
	{
	var regex1 = /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
	var regex2 = /^[a-zA-Z0-9._-]{8,}$/;
	
	//var mail =document.getElementById("email").value; 
//	var password =document.getElementById("password").value; 
	
	//if (!regex2.test(password) || !regex1.test(email))
	//{
	//}
	//else
	//{
	//createLogin(); 
	//}
	}
	</script>

</body>
</html>