<%@page import="formulaire.PersonneFormBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="res" class="formulaire.PersonneFormBean" scope="session" />
<!DOCTYPE html>
<html>
<body bgcolor="lightgreen">
<% 
 	res = (PersonneFormBean) request.getAttribute("client");	
 %>


<% if(request.getParameter("nom")==null){ %>



<h1>Formulaire de saisie</h1>

<form action = 'formulaire_inscription' method = 'get'>
	Nom : <input type = 'text' name = 'nom'><br/>
	Prénom : <input type = 'text' name = 'prenom'><br/>
	Télépnone : <input type = 'text' name = 'telephone'><br/>
	<p>Sexe : Masculin<input type="radio" name="sexe" value="masculin" checked> Feminin<input type="radio" name="sexe" value="feminin"></p></br>
<%-- 	<p>Sexe : Masculin<input type="radio" name="sexe" value="masculin" <%if (res.getCheckedFeminin().isEmpty()) %><%=res.getCheckedMasculin() %>> Feminin<input type="radio" name="sexe" value="feminin"<%if (!res.getCheckedMasculin().equals("checked")) %><%=res.getCheckedFeminin() %>></p></br> --%>
	
			
	<input type = 'submit' value = 'Valider' />
	</form>
	
	
<%}else{%>

<%-- 	<%if(request.getParameter("nom")!=null) res.setNom(request.getParameter("nom"));%> --%>
<%-- 	<%if(request.getParameter("prenom")!=null) res.setPrenom(request.getParameter("prenom"));%> --%>
<%-- 	<%if(request.getParameter("telephone")!=null) res.setTelephone(request.getParameter("telephone"));%> --%>
<%-- 	<%if(request.getParameter("sexe")!=null) res.setSexe(request.getParameter("sexe"));%> --%>

<%-- 	<% res.validate(); %> --%>
<%-- 	<% if (res.isValid()) {%> --%>
	
<%-- 	<% request.getRequestDispatcher("/suite.jsp").forward(request,response); %> --%>

	
<%-- 	<%}else{%> --%>
	
	<h1>Formulaire de saisie</h1>

	<form action = 'formulaire_inscription' method = 'get'>
	Nom : <input type = 'text' name = 'nom' value='<%=res.getNom()%>'><%if(res.getErrors().get("nom") !=null){ %><font color=#FF0000><%= res.getErrors().get("nom") %></font><%} %><br/>
	Prénom : <input type = 'text' name = 'prenom' value='<%=res.getPrenom()%>'><%if(res.getErrors().get("prenom") !=null) {%><font color=#FF0000><%= res.getErrors().get("prenom")%></font><%} %><br/>
	Télépnone : <input type = 'text' name = 'telephone' value='<%=res.getTelephone()%>'><%if(res.getErrors().get("telephone") !=null) {%><font color=#FF0000><%= res.getErrors().get("telephone")%></font><%} %><br/>
	<p>Sexe : Masculin<input type="radio" name="sexe" value="masculin" <%if (res.getCheckedFeminin().isEmpty()) %><%=res.getCheckedMasculin() %>> Feminin<input type="radio" name="sexe" value="feminin"<%if (!res.getCheckedMasculin().equals("checked")) %><%=res.getCheckedFeminin() %>><%if(res.getErrors().get("sexe") !=null) %><%= res.getErrors().get("sexe")%><br/></p>
	<% res.setErrors();%>		
			
	<input type = 'submit' value = 'Valider' />
	
</form>
<%}%>

<%-- <%}%> --%>

</body>
</html>