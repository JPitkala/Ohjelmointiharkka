<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="description" content="Kurun pizzerian internetsivut">
<meta name="author" content="">
<meta name="keywords" content="kurun pizzeria, pizza, kuru, yhteystiedot">
<meta name="viewport" content="width=device-width, intial-scale 1.0">

<link href="style.css" rel="stylesheet" type="text/css">
<link href="style_mobile.css" rel="stylesheet" type="text/css"
media="only screen and (max-width: 849px)">

<title>Yhteystiedot - Kurun pizzeria</title>

<script src="functions.js"></script>

</head>
<body>

<div id="login_ja_cart">
<c:out value="${tuotteetYhteensa}"/>
<a id="ostoskori" href="ostoskori.jsp"><img src="kuvat/cart1.png" width="30px" height="30px"></a>
<img src="kuvat/login.png"  height="30px" onClick="showLogin()">
<a href="LogoutServlet" id="logout">LogOut</a>
<br>
<c:out value="${kirjautunut}"/>
</div>

<div id="login">
<form action="AsiakasLogin" method="post">
<p>Käyttäjätunnus:</p> <input type="text" name="user" placeholder="Käyttäjätunnus">
<p>Salasana:</p> <input type="password" name="password" placeholder="Salasana">
<input id="kirjautbutton" type="submit" value="Kirjaudu">
</form>
<p>Uusi asiakas? Rekisteröidy<a href="rekisterointi.jsp" id="rekis_linkki">täällä.</a></p>
</div>

<div id="cart">

</div>

<header>
<img id="logo" src="kuvat/logo2.png"></img>
<h1 id="otsikko">Kurun pizzeria</h1>
</header>

<nav id="navigointi">
<ul>
<li><a href="AukioloServlet" id="nav_linkki">Etusivu</a></li>
<li><a href="MenuServlet" id="nav_linkki">Menu</a></li>
<li><a href="NaytaOstoskori" id="nav_linkki">Ostoskori</a></li>
<li><a href="YhteystiedotAukiolo" id="nav_linkki">Yhteystiedot</a></li>
</ul>
</nav>

<nav id="mobiili_navi">

<a id="mobiili__btn"><img src="kuvat/menuicon.png" style="width: 79px; "></a>

<ul>
<li><a href="AukioloServlet" id="nav_linkki">Etusivu</a></li>
<li><a href="MenuServlet" id="nav_linkki">Menu</a></li>
<li><a href="NaytaOstoskori" id="nav_linkki">Ostoskori</a></li>
<li><a href="YhteystiedotAukiolo" id="nav_linkki">Yhteystiedot</a></li>
</ul>
</nav>

<article id="yhteystiedot">

<div id="aukioloajat_yhteystiedot">
<b>Avoinna</b>
<p>Ma-Pe:  <c:out value="${aukiolo[0].sisalto}"/> </p>
<p>La & Su:  <c:out value ="${aukiolo[1].sisalto}"/> </p>
<br>
<b>Lounas</b>
<p>Ma-Pe: <c:out value ="${aukiolo[2].sisalto}"/> </p>
<br>
</div>

<div id="sijaintitiedot_yhteystiedot">
<b>Puhelin:</b>
<p>(01) 234 5678</p>
<br>
<b>Osoite:</b>
<p>Kurunkatu 1</p>
<p>03280 Kuru</p>
<br>
<iframe id="big" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1880.4711658782614!2d23.725017540668475!3d61.88014814903!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x468f35ba0368cd45%3A0x501103177c741eb0!2s34300+Kuru!5e0!3m2!1sfi!2sfi!4v1455709700016" 
width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
</div>

</article>
</body>
</html>