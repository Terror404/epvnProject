<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Formulaire</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="../css/style.css" rel="stylesheet">
  </head>
  
<body>
<div class="container">
<h2><strong>Formulaire d'inscription</strong></h2>
<form name="createregisterForm" id="createregisterForm" method="post" enctype="mutlipart/form-data" action="createTable"><!--  action="createTable" -->
<div class="form-group">
<label for="FIRSTNAME">Nom *</label>
 <input type="text" class="form-control" name="firstname" placeholder="Nom" style="width: 150px; " onblur="verifChar(this)"/>
 </div>
 <div class="form-group">
<label for="LASTNAME">Prénom *</label>
 <input type="text" class="form-control" name="lastname" placeholder="Prénom" onblur="verifChar(this)"/>
  </div>
 <div class="form-group">
<label for="USERNAME">Nom d'utilisateur *</label>
 <input type="text" class="form-control" name="username" placeholder="Nom d'utilisateur" onblur="verifChar(this)"/>
  </div>
 <div class="form-group">
<label for="PASSWORD">Mot de passe* (8 caractères minimum)</label>
 <input type="password" class="form-control" name="password" id="password" onblur="verifPassword(this)"/>
  </div>
 <div class="form-group">
<label for="PASSWORD2">Mot de passe (Vérification)*</label>
 <input type="password" class="form-control" name="password2" id="password2" onblur="verifPasswordEqual(this)"/>
  </div>
 <div class="form-group">
<label for="MAIL_ADDRESS">Adresse courriel *</label>
 <input type="email" class="form-control" name="mail_adress" placeholder="Adresse courriel" onblur=" verifMail(this)"/>
  </div>
 <div class="form-group">
<label for="PHONE">Téléphone *</label>
 <input type="tel" class="form-control" name="phone" placeholder="Téléphone"/>
  </div>
 <div class="form-group">
<label for="ADDRESS">Adresse *</label>
 <input type="text" class="form-control" name="address" placeholder="Adresse" onblur="verifChar(this)"/>
  </div>
 <div class="form-group">
<label for="ZIP_CODE">Code Postal *</label>
 <input type="text" class="form-control" name="zip_code" placeholder="Code postal"/>
  </div>
 <div class="form-group">
<label for="CITY">City *</label>
 <input type="text" class="form-control" name="city" placeholder="Ville" onblur="verifChar(this)"/>
  </div>
 <div class="form-group">
<label for="COUNTRY">Pays *</label>
 <input type="text" class="form-control" name="country" placeholder="Pays" onblur="verifChar(this)"/>
  </div>
 <input type="submit" value="Envoyer" value="Envoyer" class="btn btn-default" />
</form>
</div>
</body>
<script>
function verifPasswordEqual(champ)
{
var password1 = document.getElementById("password").value; 
var password2 =document.getElementById("password2").value; 
if (password1!=password2)
{
surligne(champ, true);

      return false;

}
else
 {

      surligne(champ, false);

      return true;

   }
}
function verifChar(champ)

{

   if(champ.value.length<2 || champ.value.length >50)

   {

      surligne(champ, true);

      return false;

   }

   else

   {

      surligne(champ, false);

      return true;

   }

}

function verifMail(champ)

{

   var regex = /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;

   if(!regex.test(champ.value))

   {

      surligne(champ, true);

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

      surligne(champ, true);

      return false;

   }

   else

   {

      surligne(champ, false);

      return true;

   }

}
function surligne(champ, erreur)

{

   if(erreur)

      champ.style.backgroundColor = "#fba";

   else

      champ.style.backgroundColor = "#fff";

}

</script>
</html>