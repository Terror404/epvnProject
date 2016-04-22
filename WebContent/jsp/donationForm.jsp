<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<script type="text/javascript">

//functions for submit
function createDonation(){
	<c:url var="createDonation" value="/donationForm"/>
	var donationForm = document.getElementById('createDonationForm');
	donationForm.action="${createDonation}";
	donationForm.submit();
}

</script>

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
    <link href="style.css" rel="stylesheet">
  </head>

  <body>

	<%@ include file="/jsp/header.jsp" %>

    <div class="container">
      <h2><strong>Formulaire de don</strong></h2>
      <form id="createDonationForm" modelAttribute="createDonation" method="POST" action="" enctype="mutlipart/form-data">
        <div class="form-group">
          <label for="typeDon">Type de don *</label>
          <select name="typeDon" id="typeDon" class="form-control">
            <option value="money">Monétaire</option>
            <option value="membership">Adhésion</options>
            <option value="time">Bénévolat</option>
            <option value="other">Autre</option>
          </select>
        </div>
        <div class="form-group">
          <label for="lastname">Nom *</label>
          <input type="text" class="form-control" id="lastname" placeholder="Nom">
        </div>
        <div class="form-group">
          <label for="firstname">Prénom *</label>
          <input type="text" class="form-control" id="firstname" placeholder="Prénom">
        </div>
        <div class="form-group">
          <label for="email">Adresse E-mail *</label>
          <input type="email" class="form-control" id="email" placeholder="Email">
        </div>
        <div class="form-group">
          <label for="adress">Adresse *</label>
          <input type="text" class="form-control" id="adress" placeholder="Adresse">
        </div>
        <div class="form-group">
          <label for="zip">Code Postal</label>
          <input type="number" class="form-control" id="zip" placeholder="Code Postal">
        </div>
        <div class="form-group">
          <label for="city">Ville *</label>
          <input type="text" class="form-control" id="city" placeholder="Ville">
        </div>
        <div class="form-group">
          <label for="country">Pays *</label>
          <input type="text" class="form-control" id="country" placeholder="Pays">
        </div>
        <div class="form-group">
          <label for="phone">Téléphone</label>
          <input type="text" class="form-control" id="phone" placeholder="Téléphone">
        </div>

        <div class="toggle-money">
        <div class="form-group">
          <label for="project">Projet *</label>
          <input type="text" class="form-control" id="project" placeholder="Nom du projet">
        </div>
        <div class="form-group">
          <label for="minproject">Sous projets</label>
          <select name="minproject" class="form-control">
            <option value="minproject1">Sous projets 1</option>
            <option value="minproject2">Sous projets 2</option>
            <option value="minproject3">Sous projets 3</option>
          </select>
        </div>
        <div class="form-group">
          <label for="amount">Montant *</label>
          <input type="text" class="form-control" id="amount" placeholder="Montant">
        </div>
        <div class="checkbox">
          <label><input type="checkbox" name="membership" id="membership1" value="yes"> Je souhaite adhérer  l'association</label>
        </div>
        </div>

        <div class="toggle-membership" style="display:none">
        <div class="form-group">
          <label for="amountM">Montant *</label>
          <input type="text" class="form-control" id="amountM" value="20.00e" disabled>
        </div>
        </div>

        <div class="toggle-time" style="display:none">
        <div class="form-group">
          <label for="hours">Nombre d'heures *</label>
          <input type="text" class="form-control" id="hours" placeholder="Nombre d'heures">
        </div>
        <div class="form-group">
          <label for="pj1">Pièce jointe</label>
          <input type="file" class="form-control" id="pj1">
        </div>
        </div>

        <div class="toggle-other" style="display:none">
        <div class="form-group">
          <label for="desc">Spécification du don *</label>
          <textarea name="desc" class="form-control" form="formid">Enter text here...</textarea>
        </div>
        <div class="form-group">
          <label for="pj2">Pièce jointe</label>
          <input type="file" class="form-control" id="pj2">
        </div>
        </div>

        <button type="submit" onclick="createDonation();" class="btn btn-default">Submit</button>
      </form>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
    <script>
    $("#typeDon").change(function () {
      var type = $("#typeDon").val();
      if(type == "money") {
        $(".toggle-money").show();
        $(".toggle-membership").hide();
        $(".toggle-time").hide();
        $(".toggle-other").hide();
      } else if(type == "membership") {
        $(".toggle-money").hide();
        $(".toggle-membership").show();
        $(".toggle-time").hide();
        $(".toggle-other").hide();
      } else if(type == "time") {
        $(".toggle-money").hide();
        $(".toggle-membership").hide();
        $(".toggle-time").show();
        $(".toggle-other").hide();
      } else if(type == "other") {
        $(".toggle-money").hide();
        $(".toggle-membership").hide();
        $(".toggle-time").hide();
        $(".toggle-other").show();
      }
    });
    </script>
  </body>
</html>