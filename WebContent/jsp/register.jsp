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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!--Custom styles for this template -->
<link href="../css/style.css" rel="stylesheet">
</head>

<body>

	<%@ include file="/jsp/header.jsp"%>
	<form name="createRegisterForm" id="createRegisterForm"> <!--  method="POST" enctype="mutlipart/form-data" action="createTable"-->
	<div class="container"
		style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">

		<h2>
			<strong>Formulaire d'inscription</strong>
		</h2>
	</div>


		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="form-group">
				<label>Je suis une entreprise</label> <input type="checkbox"
					id="isCompany" name="isCompany" value="yes" />
			</div>
	 <div class="form-group">	<label for="PASSWORD">Mot de passe* (8 caractères minimum)</label>
 <input type="password" class="form-control mandatory" name="password" id="password" onblur="verifPassword(this)"/>
  </div>
 <div class="form-group">
<label for="PASSWORD2">Mot de passe (Vérification)*</label>
 <input type="password" class="form-control mandatory" name="password2" id="password2" onblur="verifPasswordEqual(this)"/>
  </div>
		</div>

		<div class="toggle-company" style="display: none">
			<div class="container"
				style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
				<div class="form-group">
					<label for="companyName">Nom de l'entreprise *</label> <input
						type="text" class="form-control mandatory" name="companyName"
						onblur="verifChar(this);" maxlength="255" />
				</div>
				<div class="form-group">
					<label for="sirenNum">Numero de Siren *</label> <input type="text"
						class="form-control mandatory" name="sirenNumber"
						onblur="verifChar(this);" maxlength="255"/>
				</div>

					<div class="form-group">
						<label for="companyAdress">Adresse *</label> <input type="text"
							class="form-control mandatory" name="companyAddress"
							placeholder="Adresse" onblur="verifChar(this);" maxlength="255" />
					</div>
					<div class="form-group">
						<label for="companyZip">Code Postal *</label> <input type="number"
							class="form-control mandatory" name="companyZip"
							placeholder="Code Postal" onblur="verifCodePostal(this);"
							maxlength="10" />
					</div>
					<div class="form-group">
						<label for="companyCity">Ville *</label> <input type="text"
							class="form-control mandatory" name="companyCity" placeholder="Ville"
							onblur="verifChar(this);"maxlength="255" />
					</div>
					<div class="form-group">
						<label for="companyCountry">Pays *</label> <SELECT class="form-control"
							id="companyCountry" name="companyCountry">
							<option value="France" selected="selected">France</option>
							<option value="Afghanistan">Afghanistan</option>
							<option value="Afrique_Centrale">Afrique_Centrale</option>
							<option value="Afrique_du_sud">Afrique_du_Sud</option>
							<option value="Albanie">Albanie</option>
							<option value="Algerie">Algerie</option>
							<option value="Allemagne">Allemagne</option>
							<option value="Andorre">Andorre</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Arabie_Saoudite">Arabie_Saoudite</option>
							<option value="Argentine">Argentine</option>
							<option value="Armenie">Armenie</option>
							<option value="Australie">Australie</option>
							<option value="Autriche">Autriche</option>
							<option value="Azerbaidjan">Azerbaidjan</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbade">Barbade</option>
							<option value="Bahrein">Bahrein</option>
							<option value="Belgique">Belgique</option>
							<option value="Belize">Belize</option>
							<option value="Benin">Benin</option>
							<option value="Bermudes">Bermudes</option>
							<option value="Bielorussie">Bielorussie</option>
							<option value="Bolivie">Bolivie</option>
							<option value="Botswana">Botswana</option>
							<option value="Bhoutan">Bhoutan</option>
							<option value="Boznie_Herzegovine">Boznie_Herzegovine</option>
							<option value="Bresil">Bresil</option>
							<option value="Brunei">Brunei</option>
							<option value="Bulgarie">Bulgarie</option>
							<option value="Burkina_Faso">Burkina_Faso</option>
							<option value="Burundi">Burundi</option>
							<option value="Caiman">Caiman</option>
							<option value="Cambodge">Cambodge</option>
							<option value="Cameroun">Cameroun</option>
							<option value="Canada">Canada</option>
							<option value="Canaries">Canaries</option>
							<option value="Cap_vert">Cap_Vert</option>
							<option value="Chili">Chili</option>
							<option value="Chine">Chine</option>
							<option value="Chypre">Chypre</option>
							<option value="Colombie">Colombie</option>
							<option value="Comores">Colombie</option>
							<option value="Congo">Congo</option>
							<option value="Congo_democratique">Congo_democratique</option>
							<option value="Cook">Cook</option>
							<option value="Coree_du_Nord">Coree_du_Nord</option>
							<option value="Coree_du_Sud">Coree_du_Sud</option>
							<option value="Costa_Rica">Costa_Rica</option>
							<option value="Cote_d_Ivoire">CÃ´te_d_Ivoire</option>
							<option value="Croatie">Croatie</option>
							<option value="Cuba">Cuba</option>
							<option value="Danemark">Danemark</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominique">Dominique</option>
							<option value="Egypte">Egypte</option>
							<option value="Emirats_Arabes_Unis">Emirats_Arabes_Unis
							</option>
							<option value="Equateur">Equateur</option>
							<option value="Erythree">Erythree</option>
							<option value="Espagne">Espagne</option>
							<option value="Estonie">Estonie</option>
							<option value="Etats_Unis">Etats_Unis</option>
							<option value="Ethiopie">Ethiopie</option>
							<option value="Falkland">Falkland</option>
							<option value="Feroe">Feroe</option>
							<option value="Fidji">Fidji</option>
							<option value="Finlande">Finlande</option>
							<option value="France">France</option>
							<option value="Gabon">Gabon</option>
							<option value="Gambie">Gambie</option>
							<option value="Georgie">Georgie</option>
							<option value="Ghana">Ghana</option>
							<option value="Gibraltar">Gibraltar</option>
							<option value="Grece">Grece</option>
							<option value="Grenade">Grenade</option>
							<option value="Groenland">Groenland</option>
							<option value="Guadeloupe">Guadeloupe</option>
							<option value="Guam">Guam</option>
							<option value="Guatemala">Guatemala</option>
							<option value="Guernesey">Guernesey</option>
							<option value="Guinee">Guinee</option>
							<option value="Guinee_Bissau">Guinee_Bissau</option>
							<option value="Guinee equatoriale">Guinee_Equatoriale</option>
							<option value="Guyana">Guyana</option>
							<option value="Guyane_Francaise ">Guyane_Francaise</option>
							<option value="Haiti">Haiti</option>
							<option value="Hawaii">Hawaii</option>
							<option value="Honduras">Honduras</option>
							<option value="Hong_Kong">Hong_Kong</option>
							<option value="Hongrie">Hongrie</option>
							<option value="Inde">Inde</option>
							<option value="Indonesie">Indonesie</option>
							<option value="Iran">Iran</option>
							<option value="Iraq">Iraq</option>
							<option value="Irlande">Irlande</option>
							<option value="Islande">Islande</option>
							<option value="Israel">Israel</option>
							<option value="Italie">italie</option>
							<option value="Jamaique">Jamaique</option>
							<option value="Jan Mayen">Jan Mayen</option>
							<option value="Japon">Japon</option>
							<option value="Jersey">Jersey</option>
							<option value="Jordanie">Jordanie</option>
							<option value="Kazakhstan">Kazakhstan</option>
							<option value="Kenya">Kenya</option>
							<option value="Kirghizstan">Kirghizistan</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Koweit">Koweit</option>
							<option value="Laos">Laos</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Lettonie">Lettonie</option>
							<option value="Liban">Liban</option>
							<option value="Liberia">Liberia</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lituanie">Lituanie</option>
							<option value="Luxembourg">Luxembourg</option>
							<option value="Lybie">Lybie</option>
							<option value="Macao">Macao</option>
							<option value="Macedoine">Macedoine</option>
							<option value="Madagascar">Madagascar</option>
							<option value="MadÃ¨re">MadÃ¨re</option>
							<option value="Malaisie">Malaisie</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldives">Maldives</option>
							<option value="Mali">Mali</option>
							<option value="Malte">Malte</option>
							<option value="Man">Man</option>
							<option value="Mariannes du Nord">Mariannes du Nord</option>
							<option value="Maroc">Maroc</option>
							<option value="Marshall">Marshall</option>
							<option value="Martinique">Martinique</option>
							<option value="Maurice">Maurice</option>
							<option value="Mauritanie">Mauritanie</option>
							<option value="Mayotte">Mayotte</option>
							<option value="Mexique">Mexique</option>
							<option value="Micronesie">Micronesie</option>
							<option value="Midway">Midway</option>
							<option value="Moldavie">Moldavie</option>
							<option value="Monaco">Monaco</option>
							<option value="Mongolie">Mongolie</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Namibie">Namibie</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="Niger">Niger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk">Norfolk</option>
							<option value="Norvege">Norvege</option>
							<option value="Nouvelle_Caledonie">Nouvelle_Caledonie</option>
							<option value="Nouvelle_Zelande">Nouvelle_Zelande</option>
							<option value="Oman">Oman</option>
							<option value="Ouganda">Ouganda</option>
							<option value="Ouzbekistan">Ouzbekistan</option>
							<option value="Pakistan">Pakistan</option>
							<option value="Palau">Palau</option>
							<option value="Palestine">Palestine</option>
							<option value="Panama">Panama</option>
							<option value="Papouasie_Nouvelle_Guinee">Papouasie_Nouvelle_Guinee
							</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Pays_Bas">Pays_Bas</option>
							<option value="Perou">Perou</option>
							<option value="Philippines">Philippines</option>
							<option value="Pologne">Pologne</option>
							<option value="Polynesie">Polynesie</option>
							<option value="Porto_Rico">Porto_Rico</option>
							<option value="Portugal">Portugal</option>
							<option value="Qatar">Qatar</option>
							<option value="Republique_Dominicaine">Republique_Dominicaine
							</option>
							<option value="Republique_Tcheque">Republique_Tcheque</option>
							<option value="Reunion">Reunion</option>
							<option value="Roumanie">Roumanie</option>
							<option value="Royaume_Uni">Royaume_Uni</option>
							<option value="Russie">Russie</option>
							<option value="Rwanda">Rwanda</option>
							<option value="Sahara Occidental">Sahara Occidental</option>
							<option value="Sainte_Lucie">Sainte_Lucie</option>
							<option value="Saint_Marin">Saint_Marin</option>
							<option value="Salomon">Salomon</option>
							<option value="Salvador">Salvador</option>
							<option value="Samoa_Occidentales">Samoa_Occidentales</option>
							<option value="Samoa_Americaine">Samoa_Americaine</option>
							<option value="Sao_Tome_et_Principe">Sao_Tome_et_Principe
							</option>
							<option value="Senegal">Senegal</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leone">Sierra Leone</option>
							<option value="Singapour">Singapour</option>
							<option value="Slovaquie">Slovaquie</option>
							<option value="Slovenie">Slovenie</option>
							<option value="Somalie">Somalie</option>
							<option value="Soudan">Soudan</option>
							<option value="Sri_Lanka">Sri_Lanka</option>
							<option value="Suede">Suede</option>
							<option value="Suisse">Suisse</option>
							<option value="Surinam">Surinam</option>
							<option value="Swaziland">Swaziland</option>
							<option value="Syrie">Syrie</option>
							<option value="Tadjikistan">Tadjikistan</option>
							<option value="Taiwan">Taiwan</option>
							<option value="Tonga">Tonga</option>
							<option value="Tanzanie">Tanzanie</option>
							<option value="Tchad">Tchad</option>
							<option value="Thailande">Thailande</option>
							<option value="Tibet">Tibet</option>
							<option value="Timor_Oriental">Timor_Oriental</option>
							<option value="Togo">Togo</option>
							<option value="Trinite_et_Tobago">Trinite_et_Tobago</option>
							<option value="Tristan da cunha">Tristan de cuncha</option>
							<option value="Tunisie">Tunisie</option>
							<option value="Turkmenistan">Turmenistan</option>
							<option value="Turquie">Turquie</option>
							<option value="Ukraine">Ukraine</option>
							<option value="Uruguay">Uruguay</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Vatican">Vatican</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vierges_Americaines">Vierges_Americaines
							</option>
							<option value="Vierges_Britanniques">Vierges_Britanniques
							</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Wake">Wake</option>
							<option value="Wallis et Futuma">Wallis et Futuma</option>
							<option value="Yemen">Yemen</option>
							<option value="Yougoslavie">Yougoslavie</option>
							<option value="Zambie">Zambie</option>
							<option value="Zimbabwe">Zimbabwe</option>
						</select>
					</div>
					<div class="form-group">
						<label for="companyEmail">Adresse E-mail *</label> <input type="email"
							class="form-control mandatory" name="companyEmail" placeholder="Email"
							onblur="verifMail(this);"maxlength="255" />
					</div>

					<div class="form-group">
						<label for="companyPhone">Téléphone</label> <input type="text"
							class="form-control mandatory" name="companyPhone" placeholder="Téléphone"
							maxlength="10" maxlength="255" onblur="verifTel(this);"/>
					</div>
				</div>
			</div>
		<div class="container"
			style="margin-top: 10px; margin-bottom: 10px; padding-top: 5px; border: 0.2px solid; border-radius: 4px; border-color: #e0e0e0; text-align: center;">
			<div class="toggle-company">
				<div class="form-group">
					<label for="lastname">Nom *</label> <input type="text"
						class="form-control mandatory" name="lastname" placeholder="Nom"
						onblur="verifChar(this);" maxlength="255"/>
				</div>
				<div class="form-group">
					<label for="firstname">Prénom *</label> <input type="text"
						class="form-control mandatory" name="firstname"
						placeholder="Prénom" onblur="verifChar(this);" maxlength="255"/>
				</div>
				<div class="form-group">

					<div class="form-group">
						<label for="adress">Adresse *</label> <input type="text"
							class="form-control mandatory" name="address"
							placeholder="Adresse" onblur="verifChar(this);"maxlength="255" />
					</div>
					<div class="form-group">
						<label for="zip">Code Postal *</label> <input type="number"
							class="form-control mandatory" name="zip"
							placeholder="Code Postal" onblur="verifCodePostal(this);"
							maxlength="10" />
					</div>
					<div class="form-group">
						<label for="city">Ville *</label> <input type="text"
							class="form-control mandatory" name="city" placeholder="Ville"
							onblur="verifChar(this);"maxlength="255" />
					</div>
					<div class="form-group">
						<label for="COUNTRY">Pays *</label> <SELECT class="form-control"
							id="country" name="country">
							<option value="France" selected="selected">France</option>
							<option value="Afghanistan">Afghanistan</option>
							<option value="Afrique_Centrale">Afrique_Centrale</option>
							<option value="Afrique_du_sud">Afrique_du_Sud</option>
							<option value="Albanie">Albanie</option>
							<option value="Algerie">Algerie</option>
							<option value="Allemagne">Allemagne</option>
							<option value="Andorre">Andorre</option>
							<option value="Angola">Angola</option>
							<option value="Anguilla">Anguilla</option>
							<option value="Arabie_Saoudite">Arabie_Saoudite</option>
							<option value="Argentine">Argentine</option>
							<option value="Armenie">Armenie</option>
							<option value="Australie">Australie</option>
							<option value="Autriche">Autriche</option>
							<option value="Azerbaidjan">Azerbaidjan</option>
							<option value="Bahamas">Bahamas</option>
							<option value="Bangladesh">Bangladesh</option>
							<option value="Barbade">Barbade</option>
							<option value="Bahrein">Bahrein</option>
							<option value="Belgique">Belgique</option>
							<option value="Belize">Belize</option>
							<option value="Benin">Benin</option>
							<option value="Bermudes">Bermudes</option>
							<option value="Bielorussie">Bielorussie</option>
							<option value="Bolivie">Bolivie</option>
							<option value="Botswana">Botswana</option>
							<option value="Bhoutan">Bhoutan</option>
							<option value="Boznie_Herzegovine">Boznie_Herzegovine</option>
							<option value="Bresil">Bresil</option>
							<option value="Brunei">Brunei</option>
							<option value="Bulgarie">Bulgarie</option>
							<option value="Burkina_Faso">Burkina_Faso</option>
							<option value="Burundi">Burundi</option>
							<option value="Caiman">Caiman</option>
							<option value="Cambodge">Cambodge</option>
							<option value="Cameroun">Cameroun</option>
							<option value="Canada">Canada</option>
							<option value="Canaries">Canaries</option>
							<option value="Cap_vert">Cap_Vert</option>
							<option value="Chili">Chili</option>
							<option value="Chine">Chine</option>
							<option value="Chypre">Chypre</option>
							<option value="Colombie">Colombie</option>
							<option value="Comores">Colombie</option>
							<option value="Congo">Congo</option>
							<option value="Congo_democratique">Congo_democratique</option>
							<option value="Cook">Cook</option>
							<option value="Coree_du_Nord">Coree_du_Nord</option>
							<option value="Coree_du_Sud">Coree_du_Sud</option>
							<option value="Costa_Rica">Costa_Rica</option>
							<option value="Cote_d_Ivoire">CÃ´te_d_Ivoire</option>
							<option value="Croatie">Croatie</option>
							<option value="Cuba">Cuba</option>
							<option value="Danemark">Danemark</option>
							<option value="Djibouti">Djibouti</option>
							<option value="Dominique">Dominique</option>
							<option value="Egypte">Egypte</option>
							<option value="Emirats_Arabes_Unis">Emirats_Arabes_Unis
							</option>
							<option value="Equateur">Equateur</option>
							<option value="Erythree">Erythree</option>
							<option value="Espagne">Espagne</option>
							<option value="Estonie">Estonie</option>
							<option value="Etats_Unis">Etats_Unis</option>
							<option value="Ethiopie">Ethiopie</option>
							<option value="Falkland">Falkland</option>
							<option value="Feroe">Feroe</option>
							<option value="Fidji">Fidji</option>
							<option value="Finlande">Finlande</option>
							<option value="France">France</option>
							<option value="Gabon">Gabon</option>
							<option value="Gambie">Gambie</option>
							<option value="Georgie">Georgie</option>
							<option value="Ghana">Ghana</option>
							<option value="Gibraltar">Gibraltar</option>
							<option value="Grece">Grece</option>
							<option value="Grenade">Grenade</option>
							<option value="Groenland">Groenland</option>
							<option value="Guadeloupe">Guadeloupe</option>
							<option value="Guam">Guam</option>
							<option value="Guatemala">Guatemala</option>
							<option value="Guernesey">Guernesey</option>
							<option value="Guinee">Guinee</option>
							<option value="Guinee_Bissau">Guinee_Bissau</option>
							<option value="Guinee equatoriale">Guinee_Equatoriale</option>
							<option value="Guyana">Guyana</option>
							<option value="Guyane_Francaise ">Guyane_Francaise</option>
							<option value="Haiti">Haiti</option>
							<option value="Hawaii">Hawaii</option>
							<option value="Honduras">Honduras</option>
							<option value="Hong_Kong">Hong_Kong</option>
							<option value="Hongrie">Hongrie</option>
							<option value="Inde">Inde</option>
							<option value="Indonesie">Indonesie</option>
							<option value="Iran">Iran</option>
							<option value="Iraq">Iraq</option>
							<option value="Irlande">Irlande</option>
							<option value="Islande">Islande</option>
							<option value="Israel">Israel</option>
							<option value="Italie">italie</option>
							<option value="Jamaique">Jamaique</option>
							<option value="Jan Mayen">Jan Mayen</option>
							<option value="Japon">Japon</option>
							<option value="Jersey">Jersey</option>
							<option value="Jordanie">Jordanie</option>
							<option value="Kazakhstan">Kazakhstan</option>
							<option value="Kenya">Kenya</option>
							<option value="Kirghizstan">Kirghizistan</option>
							<option value="Kiribati">Kiribati</option>
							<option value="Koweit">Koweit</option>
							<option value="Laos">Laos</option>
							<option value="Lesotho">Lesotho</option>
							<option value="Lettonie">Lettonie</option>
							<option value="Liban">Liban</option>
							<option value="Liberia">Liberia</option>
							<option value="Liechtenstein">Liechtenstein</option>
							<option value="Lituanie">Lituanie</option>
							<option value="Luxembourg">Luxembourg</option>
							<option value="Lybie">Lybie</option>
							<option value="Macao">Macao</option>
							<option value="Macedoine">Macedoine</option>
							<option value="Madagascar">Madagascar</option>
							<option value="MadÃ¨re">MadÃ¨re</option>
							<option value="Malaisie">Malaisie</option>
							<option value="Malawi">Malawi</option>
							<option value="Maldives">Maldives</option>
							<option value="Mali">Mali</option>
							<option value="Malte">Malte</option>
							<option value="Man">Man</option>
							<option value="Mariannes du Nord">Mariannes du Nord</option>
							<option value="Maroc">Maroc</option>
							<option value="Marshall">Marshall</option>
							<option value="Martinique">Martinique</option>
							<option value="Maurice">Maurice</option>
							<option value="Mauritanie">Mauritanie</option>
							<option value="Mayotte">Mayotte</option>
							<option value="Mexique">Mexique</option>
							<option value="Micronesie">Micronesie</option>
							<option value="Midway">Midway</option>
							<option value="Moldavie">Moldavie</option>
							<option value="Monaco">Monaco</option>
							<option value="Mongolie">Mongolie</option>
							<option value="Montserrat">Montserrat</option>
							<option value="Mozambique">Mozambique</option>
							<option value="Namibie">Namibie</option>
							<option value="Nauru">Nauru</option>
							<option value="Nepal">Nepal</option>
							<option value="Nicaragua">Nicaragua</option>
							<option value="Niger">Niger</option>
							<option value="Nigeria">Nigeria</option>
							<option value="Niue">Niue</option>
							<option value="Norfolk">Norfolk</option>
							<option value="Norvege">Norvege</option>
							<option value="Nouvelle_Caledonie">Nouvelle_Caledonie</option>
							<option value="Nouvelle_Zelande">Nouvelle_Zelande</option>
							<option value="Oman">Oman</option>
							<option value="Ouganda">Ouganda</option>
							<option value="Ouzbekistan">Ouzbekistan</option>
							<option value="Pakistan">Pakistan</option>
							<option value="Palau">Palau</option>
							<option value="Palestine">Palestine</option>
							<option value="Panama">Panama</option>
							<option value="Papouasie_Nouvelle_Guinee">Papouasie_Nouvelle_Guinee
							</option>
							<option value="Paraguay">Paraguay</option>
							<option value="Pays_Bas">Pays_Bas</option>
							<option value="Perou">Perou</option>
							<option value="Philippines">Philippines</option>
							<option value="Pologne">Pologne</option>
							<option value="Polynesie">Polynesie</option>
							<option value="Porto_Rico">Porto_Rico</option>
							<option value="Portugal">Portugal</option>
							<option value="Qatar">Qatar</option>
							<option value="Republique_Dominicaine">Republique_Dominicaine
							</option>
							<option value="Republique_Tcheque">Republique_Tcheque</option>
							<option value="Reunion">Reunion</option>
							<option value="Roumanie">Roumanie</option>
							<option value="Royaume_Uni">Royaume_Uni</option>
							<option value="Russie">Russie</option>
							<option value="Rwanda">Rwanda</option>
							<option value="Sahara Occidental">Sahara Occidental</option>
							<option value="Sainte_Lucie">Sainte_Lucie</option>
							<option value="Saint_Marin">Saint_Marin</option>
							<option value="Salomon">Salomon</option>
							<option value="Salvador">Salvador</option>
							<option value="Samoa_Occidentales">Samoa_Occidentales</option>
							<option value="Samoa_Americaine">Samoa_Americaine</option>
							<option value="Sao_Tome_et_Principe">Sao_Tome_et_Principe
							</option>
							<option value="Senegal">Senegal</option>
							<option value="Seychelles">Seychelles</option>
							<option value="Sierra Leone">Sierra Leone</option>
							<option value="Singapour">Singapour</option>
							<option value="Slovaquie">Slovaquie</option>
							<option value="Slovenie">Slovenie</option>
							<option value="Somalie">Somalie</option>
							<option value="Soudan">Soudan</option>
							<option value="Sri_Lanka">Sri_Lanka</option>
							<option value="Suede">Suede</option>
							<option value="Suisse">Suisse</option>
							<option value="Surinam">Surinam</option>
							<option value="Swaziland">Swaziland</option>
							<option value="Syrie">Syrie</option>
							<option value="Tadjikistan">Tadjikistan</option>
							<option value="Taiwan">Taiwan</option>
							<option value="Tonga">Tonga</option>
							<option value="Tanzanie">Tanzanie</option>
							<option value="Tchad">Tchad</option>
							<option value="Thailande">Thailande</option>
							<option value="Tibet">Tibet</option>
							<option value="Timor_Oriental">Timor_Oriental</option>
							<option value="Togo">Togo</option>
							<option value="Trinite_et_Tobago">Trinite_et_Tobago</option>
							<option value="Tristan da cunha">Tristan de cuncha</option>
							<option value="Tunisie">Tunisie</option>
							<option value="Turkmenistan">Turmenistan</option>
							<option value="Turquie">Turquie</option>
							<option value="Ukraine">Ukraine</option>
							<option value="Uruguay">Uruguay</option>
							<option value="Vanuatu">Vanuatu</option>
							<option value="Vatican">Vatican</option>
							<option value="Venezuela">Venezuela</option>
							<option value="Vierges_Americaines">Vierges_Americaines
							</option>
							<option value="Vierges_Britanniques">Vierges_Britanniques
							</option>
							<option value="Vietnam">Vietnam</option>
							<option value="Wake">Wake</option>
							<option value="Wallis et Futuma">Wallis et Futuma</option>
							<option value="Yemen">Yemen</option>
							<option value="Yougoslavie">Yougoslavie</option>
							<option value="Zambie">Zambie</option>
							<option value="Zimbabwe">Zimbabwe</option>
						</select>
					</div>
					<div class="form-group">
						<label for="email">Adresse E-mail *</label> <input type="email"
							class="form-control mandatory" name="email" placeholder="Email"
							onblur="verifMail(this);" maxlength="255"/>
					</div>

					<div class="form-group">
						<label for="phone">Téléphone</label> <input type="text"
							class="form-control mandatory" name="phone" placeholder="Téléphone"
							maxlength="10" maxlength="13" onblur="verifTel(this);"/>
					</div>
			<div class="checkbox">
				<label><input type="checkbox" name="membership"
					id="membership1" value="yes"> Je suis déjà adhérent</label>
			</div>
			<div class="checkbox">
				<label><input type="checkbox" name="membership"
					id="membership2" value="no"> Je souhaite devenir adhérent</label>
			</div>
				</div>
			</div>


			<div class="checkbox">
				<label><input type="checkbox" name="cgu" id="cgu"
					value="cgu"> J'accepte les CGU *</label>
			</div>
			<input type="submit" value="Envoyer" class="btn btn-default"  onclick="createRegister();"/>
		</div>
	</form>

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
	function verifCodePostal(champ)
	{
	var regex = /^[0-9]{1,10}$/;
	if ( !regex.test(champ.value))
	{
	surligne(champ, true);
	champ.placeholder = "Le code postal n'est pas valide";
	      return false;
	}
	else
	{
	 surligne(champ, false);

	      return true;
	}
	}
	
	function verifTel(champ)
	{
	var regex = /^[0-9]{10,13}$/;
	if ( !regex.test(champ.value))
	{
	surligne(champ, true);
	champ.placeholder = "Le numéro de téléphone n'est pas valide";
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
	function verifPasswordEqual(champ)
	{
	var password1 = document.getElementById("password").value; 
	var password2 =document.getElementById("password2").value; 
	
	if (password1!=password2)
	{
	surligne(champ, true);
	champ.placeholder = "Les mots de passe ne sont pas identiques";
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
	      champ.placeholder = "champ.value doit comporter uniquement des lettres";
	      return false;

	   }

	   else

	   {

	      surligne(champ, false);

	      return true;

	   }

	}
	
	
	
	//function verifForm()
	//{
	//private	var name_company =document.getElementById("companyName").value; 
	//private	var siren =document.getElementById("SirenNumber").value; 
	//private var password2 =document.getElementById("password2").value; 
	//private var zip_code =document.getElementById("zip").value;
	//private var zip_code_company =document.getElementById("companyZip").value;
	//private var regexZipCode = /^[0-9]{1,10}$/;
	//private var phone =document.getElementById("phone").value;	
	//private var phone_company =document.getElementById("companyPhone").value;
	//private var regexPhone = /^[0-9]{10,13}$/;
	//private var firstname = document.getElementById("firstname").value; 
	//private var lastname =document.getElementById("lastname").value; 
	//private var city =document.getElementById("city").value; var city_company =document.getElementById("companyCity").value; 
	//private var address =document.getElementById("address").value; 
	//private var address_company =document.getElementById("companyAddress").value; 
	//private var mail = document.getElementById("email").value; 
	//private var mail_company = document.getElementById("companyEmail").value; 
	//private var regexMail = /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
	//private var regexPassword = /^[a-zA-Z0-9._-]{8,}$/;

	
	//if (document.getElementById("isCompany").value=="yes")
	//{
	//if (password1!=password2 || !regexZipCode.test(zip_code_company) ||!regexPhone.test(phone_company) || (name_company.length<2 || name_company.length>50) || (siren.length<2 || siren.length>50)  || (city_company.length<2 || city_company.length>50) || (address_company.length<2 || address_company.length>50)||!regexMail.test(mail_company) ||!regexPassword.test(password1))
	//	{
	//	document.write('<div>ya une erreur !</div>');
	//	}
	//}
	//else
	//{
	//if (password1!=password2 || !regexZipCode.test(zip_code) ||!regexPhone.test(phone) || (firstname.length<2 || firstname.length>50) || (lastname.length<2 || lastname.length>50)  || (city.length<2 || city.length>50) || (address.length<2 || address.length>50)||!regexMail.test(mail) ||!regexPassword.test(password1))
	//	{
	//	document.write('<div>ya une erreur !</div>');
	//	}
	//}
	//}
	
	function createRegister() {

			var registerForm = document.getElementById('createRegisterForm');
			var mandatoryFieldMissing = true;
			var createRegister = "/epvnProject/user/inscription";
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
                alert ('Felicitation pour votre inscription !');
				registerForm.action = createRegister;
				registerForm.method = "POST";
				registerForm.submit();
			}
		}

	$(document).ready(function() {
		  if (type == "other") {
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

</body>
</html>
