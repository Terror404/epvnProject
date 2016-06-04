<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>



<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar" aria-expanded="true" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
          </button>
          <a href="../index/init"><img src="../img/logo_header.png" class="img-rounded" alt="Logo"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index/init" >Accueil</a></li>
            <li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nos actions <span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="../index/init">Nos projets</a></li>
            		<li><a href="../events/init">Nos évènements</a></li>
          		</ul>
        	</li>
            <li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nous aider <span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="../donation/init">Faire un don</a></li>
            		<li><a href="../donation/init">Adhésion</a></li>
            		<li><a href="../donation/init">Parrainage</a></li>
          		</ul>
        	</li>
        	<li><a id="nava" class="btn btn-default navbtn" href="../donation/init" role="button">Faire un don</a></li>
        	<li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Mon profil <span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="../profile/consult">Informations personnelles</a></li>
            		<li><a href="../profile/consult">Historiques des projets</a></li>
            		<li><a href="../profile/consult">Historiques des dons</a></li>
            		<li><a href="../profile/consult">Historiques des adhésions</a></li>
          		</ul>
        	</li>
        	<li><a href="/epvnProject/contact/consult">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<script type="text/javascript">

//functions for submit
function createDonationInit(){
	
	var donationForm = document.getElementById('createDonationInit');
	var createDonation = "../donation/init";
	console.log("yes");
	donationForm.action= createDonation;
	donationForm.submit();
}

</script>

