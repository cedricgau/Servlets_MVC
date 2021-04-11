<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <jsp:useBean id="articles" class="java.util.ArrayList" scope="session"/>
 <jsp:useBean id="personne" class="formulaire.PersonneFormBean" scope="session">
 <jsp:setProperty name="personne" property="nom" value="rouge"/>
 <jsp:setProperty name="personne" property="prenom" value="20"/>
 </jsp:useBean>
 <% if( request.getParameter("article")!=null) articles.add(request.getParameter("article")); %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste de courses</title></head>
<body>
<h2>Liste de courses</h2>
<p>
<ul>
<%for(int i=0;i<articles.size();i++){%><li><%=articles.get(i) %><jsp:getProperty property="nom" name="personne"/></li><%} %>
</ul>
</p>
<a href="entrerarticle.jsp">Ajouter un article</a>

</body>
</html>