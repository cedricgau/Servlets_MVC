<%@page language="java"  import="formulaire.PersonneFormBean" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<body bgcolor="lightblue">

<h1>Formulaire de saisie</h1>

<% PersonneFormBean personne = new PersonneFormBean(); %>
<c:set var="test" scope="page" value='${header[user-agent"] }'/>
<% if(request.getParameter("nom")!=null && !request.getParameter("nom").isEmpty()) personne.setNom(request.getParameter("nom"));%>
<% if(request.getParameter("prenom")!=null && !request.getParameter("prenom").isEmpty()) personne.setPrenom(request.getParameter("prenom"));%>
<% if(request.getParameter("telephone")!=null && !request.getParameter("telephone").isEmpty()) personne.setTelephone(request.getParameter("telephone"));%>

<form action = 'formulairePersonne.jsp' method = 'get'>
	Nom : <input type = 'text' name = 'nom' value='<%= personne.getNom()%>'><br/>
	Prénom : <input type = 'text' name = 'prenom' value='<%= personne.getPrenom()%>'><br/>
	Téléphone : <input type = 'text' name = 'telephone' value='<%= personne.getTelephone()%>'><br/>			
			
	<input type = 'submit' value = 'Valider' />
	
</form>

<% if(request.getParameter("nom")!=null && !request.getParameter("nom").isEmpty()){ %>

<h1>Affichage des éléments saisis</h1>
Le nom saisi est : <%= personne.getNom() %><br/>
Le prénom saisi est : <%= personne.getPrenom() %><br/>
Le téléphone saisi est : <%= personne.getTelephone() %><br/>

<%} %>

</body>
</html>