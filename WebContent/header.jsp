<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <a href="./index.jsp"><img src="./img/logo_header.png" class="img-rounded" alt="Logo"></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="./profile.jsp">Profil</a></li>
            <li><a href="" disabled>|</a></li>
            <li><a href="">Accueil</a></li>
            <li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nos actions <span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="./index.jsp">Nos projets</a></li>
            		<li><a href="./events.jsp">Nos évènements</a></li>
          		</ul>
        	</li>
            <!--<li><a id="nava" class="btn btn-default navbtn" href="./form.html" role="button">Faire un don</a></li>-->
            <li class="dropdown">
          		<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Nous aider <span class="caret"></span></a>
          		<ul class="dropdown-menu">
            		<li><a href="./form.jsp">Faire un don</a></li>
            		<li><a href="./form.jsp">Adhésion</a></li>
            		<li><a href="./form.jsp">Parrainage</a></li>
          		</ul>
        	</li>
        	<li><a href="./contact.jsp">Contact</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
</body>
</html>