<%@page language="java"  import="formulaire.PersonneFormBean" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<body bgcolor="orange">

<h1>Formulaire de saisie</h1>

<% PersonneFormBean personne = new PersonneFormBean(); %>
<% if(request.getParameter("nom")!=null && !request.getParameter("nom").isEmpty()) personne.setNom(request.getParameter("nom"));%>
<% if(request.getParameter("prenom")!=null && !request.getParameter("prenom").isEmpty()) personne.setPrenom(request.getParameter("prenom"));%>
<% if(request.getParameter("telephone")!=null && !request.getParameter("telephone").isEmpty()) personne.setTelephone(request.getParameter("telephone"));%>

<form action = 'formulairePersonne.jsp' method = 'get'>
	Nom : <input type = 'text' name = 'nom' value='<%= personne.getNom()%>'><br/>
	Pr�nom : <input type = 'text' name = 'prenom' value='<%= personne.getPrenom()%>'><br/>
	T�l�phone : <input type = 'text' name = 'telephone' value='<%= personne.getTelephone()%>'><br/>			
			
	<input type = 'submit' value = 'Valider' />
	
</form>

<% if(request.getParameter("nom")!=null && !request.getParameter("nom").isEmpty()){ %>

<h1>Affichage des �l�ments saisis</h1>
Le nom saisi est : <%= personne.getNom() %><br/>
Le pr�nom saisi est : <%= personne.getPrenom() %><br/>
Le t�l�phone saisi est : <%= personne.getTelephone() %><br/>

<%} %>

</body>
</html>