<%@page import="formulaire.PersonneFormBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="res" class="formulaire.PersonneFormBean" scope="session" />
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Good Display</title>
</head>
<body bgcolor="lightblue">

<% 
	res = (PersonneFormBean) request.getAttribute("client");      
 %>

<h1>Formulaire de saisie</h1>

<form action = 'formulaire_inscription' method = 'get'>
	Nom : <input type = 'text' name = 'nom'><br/>
	Prénom : <input type = 'text' name = 'prenom'><br/>
	Télépnone : <input type = 'text' name = 'telephone'><br/>
	<p>Sexe : Masculin<input type="radio" name="sexe" value="masculin" <%if (res.getCheckedFeminin().isEmpty()) %><%=res.getCheckedMasculin() %>> Feminin<input type="radio" name="sexe" value="feminin"<%if (!res.getCheckedMasculin().equals("checked")) %><%=res.getCheckedFeminin() %>></p></br>
			
			
	<input type = 'submit' value = 'Valider' />
	
</form>

<h1>Bonjour <%=res.getPrenom() %>, l'identification a réussi !</h1>

<h2>Affichage des éléments saisis</h2>
	
	
	Le nom saisi est : <%= res.getNom() %></br>
	Le prénom saisi est : <%= res.getPrenom() %></br>
	Le téléphone saisi est : <%= res.getTelephone() %></br>
	La personne est de sexe : <%= res.getSexe() %> </br>
	
	<p><a href="formulaire_inscription.jsp">Rappel du formulaire</a></p>
</body>
</html>
