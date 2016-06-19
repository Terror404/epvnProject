<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Profile</title>
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

	<jsp:include page="header.jsp" />
	<%@page import="model.beans.profile.User"%>

	<div class="container">
		<h2>
			<strong>Profil</strong>
		</h2>
		<ul class="nav nav-tabs">
			<li id="informations_tab" class="active"><a data-toggle="tab"
				id="onglets" href="#infos">Informations</a></li>
			<li id="projects_history_tab"><a data-toggle="tab" id="onglets"
				href="#projects">Historique Projets</a></li>
			<li id="dons_history_tab"><a data-toggle="tab" id="onglets"
				href="#dons">Historique Dons</a></li>
			<li id="adhesion_tab"><a data-toggle="tab" id="onglets"
				href="#adhesion">Historique Adhésion</a></li>
		</ul>

		<div class="tab-content">
			<div id="infos" class="tab-pane fade in active">
				<h3>Informations personnelles</h3>
				<p>Nom :</p>
				<%
					User user = (User) request.getAttribute("user");
					out.print(user.getLastName());
				%>
				<p>Prénom :</p>
				<%
					out.print(user.getFirstName());
				%>
				<p>Adresse E-mail :</p>
				<%
					out.print(user.getMailAddress());
				%>
				<p>Adresse :</p>
				<%
					out.print(user.getPhysicalAddress());
				%>
				<p>Code Postal :</p>
				<%
					out.print(user.getZipCode());
				%>
				<p>Ville :</p>
				<%
					out.print(user.getCity());
				%>
				<p>Pays :</p>
				<%
					out.print(user.getCountry());
				%>
				<p>Téléphone :</p>
				<%
					out.print(user.getPhoneNumber());
				%>
				<p>Adhérent :</p>
				<%
					if (user.getAdherent() > 0) {
						out.print("Oui");
					} else {
						out.print("Non");
					}
				%>
			</div>
			<div id="projects" class="tab-pane fade">
				<h3>Historique des projets</h3>
				<article>
					<div class="row">
						<%@ page import="model.beans.project.Project"%>
						<%@ page import="java.util.ArrayList"%>
						<%
							ArrayList<Project> collec = (ArrayList<Project>) request.getAttribute("projectsList");
							for (Project project : collec) {
						%>
						<div class="col-md-3">
							<a href="../project/consult"><img src="../img/img1.jpg"
								class="img-rounded" alt="Responsive image"></a>
						</div>
						<div class="col-md-6">
							<a href="../project/consult"><h3>
									<%
										out.println(project.getTitleProject());
									%>
								</h3></a>
							<p>Type de projet : éducation et santé</p>
							<p>Localisation : Bac Giang, province de Bac Giang</p>
							<p>Durée globale : 2010 – 2020</p>
						</div>
						<div class="col-md-3 align-center">
							<input type="text" value="69" class="dial">
							<div class="col-xs-12" style="height: 15px;"></div>
							<p>
								<strong>Total des dons : <%
									out.println(project.getActualAchievedGoal() / project.getGoal() * 100);
								%>
								</strong>
							</p>
						</div>
						<%
							}
						%>
					</div>
				</article>
			</div>

			<div id="dons" class="tab-pane fade">
				<h3>Historique des dons</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Montant</th>
							<th>Projet</th>
							<th>Date</th>
							<th>Reçu fiscal</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>20.00€</td>
							<td>Projet 1</td>
							<td>01/01/1970</td>
							<td><a href="">Télécharger le document</a></td>
						</tr>
						<tr>
							<td>20.00€</td>
							<td>Projet 1</td>
							<td>01/01/1970</td>
							<td><a href="">Télécharger le document</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="adhesion" class="tab-pane fade">
				<h3>Historique des adhésions</h3>
				<table class="table">
					<thead>
						<tr>
							<th>Date</th>
							<th>Adhesion</th>
					</thead>
					<tbody>
						<tr>
							<td>13/03/2014 - 13/03/2015</td>
							<td>Oui</td>
						</tr>
						<tr>
							<td>14/03/2015 - aujourd'hui</td>
							<td>Non</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

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
				'width' : 150,
				'height' : 150,
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
		function changeTabID() {

		}
	</script>
</body>
</html>