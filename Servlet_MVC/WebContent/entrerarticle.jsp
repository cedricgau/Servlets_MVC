<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter un article</title>
</head>
<body>
<h2>Ajouter un article</h2>
<form action="listeArticles.jsp" method="get">
<p>Article :<input type="text" name="article"></p>
<p>Nom :<input type="text" name="nom"></p>
<p>Prenom :<input type="text" name="prenom"></p>

<input type="submit" value="Ajouter">
</form>
</body>
</html>