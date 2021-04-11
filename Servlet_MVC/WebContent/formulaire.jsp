<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<body bgcolor="#FFFFFF">

<h1>Formulaire de saisie</h1>

<form action = 'formulaire.jsp' method = 'get'>
	Nom : <input type = 'text' name = 'nom'><br/>
	Prénom : <input type = 'text' name = 'prenom'><br/>
	<br/><br/>
			<p>Vos centres d'intérêts :<p>
			<p>
			<input type="checkbox" name="selection" value="sports">Sport</p></br>
			<input type="checkbox" name="selection" value="cinema">Cinéma</p></br>
			<input type="checkbox" name="selection" value="musique">Musique</p></br>
			<input type="checkbox" name="selection" value="restaurant">Restaurant</p></br>
			
	<input type = 'submit' value = 'Valider' />
	
</form>

<% if(request.getParameter("nom")!=null){ %>
	<h1>Affichage des éléments saisis</h1>
Bonjour <%= request.getParameter("prenom") %> <%= request.getParameter("nom") %>, vous aimez :<br/>
<% String[] chek = request.getParameterValues("selection");%>
<% if( chek!=null && chek.length!=0){ %>
<ul>
<% for(int i=0;i<chek.length;i++){%>
	<li><%=(chek[i].equals("cinema")) ? "cinéma" : chek[i]%></li>
	<%} %>
	<p><a href="formulaire.jsp">Rappel du formulaire</a></p>
	<%}%>
</ul>
<%}%>
</body>
</html>