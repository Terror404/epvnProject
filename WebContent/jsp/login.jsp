<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <link href="style.css" rel="stylesheet">
  </head>

  <body>

	<jsp:include page="header.jsp" />

    <div class="container" id="project-container">
      <div class="row">
        <div class="col-md-6 log" id="signdiv">
          <div class="form_container">
          <h2 class="log_title"><strong>Sign in</strong></h2>
          <form id="form_sign">
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
              <label for="mdp">Mot de passe *</label>
              <input type="password" class="form-control" id="mdp" placeholder="Mot de passe">
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
            <div class="checkbox">
              <label><input type="checkbox" name="membership" id="membership1" value="yes"> Je suis déjà adhérent</label>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" name="membership" id="membership2" value="no"> Je souhaite devenir adhérent</label>
            </div>
            <div class="checkbox">
              <label><input type="checkbox" name="cgu" id="cgu" value="cgu"> J'accepte les CGU *</label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div>
        </div>
        <div class="col-md-6 log" id="logdiv">
          <div class="form_container">
          <h2 class="log_title"><strong>Log in</strong></h2>
          <form id="form_sign">
            <div class="form-group">
              <label for="email">Adresse E-mail *</label>
              <input type="email" class="form-control" id="email" placeholder="Email">
            </div>
            <div class="form-group">
              <label for="mdp">Mot de passe *</label>
              <input type="password" class="form-control" id="mdp" placeholder="Mot de passe">
            </div>
            <div class="checkbox">
              <label><input type="checkbox" name="rmber" id="rmber" value="rmber"> Se souvenir ? </label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
        </div>
        </div>
      </div>
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>
  </body>
</html>