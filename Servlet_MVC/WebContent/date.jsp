<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.time.*" %>
<%! int varglob =0; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<META HTTP-EQUIV="Refresh"
CONTENT="1;url=date.jsp">
<title>Affichage de la date système de serveur</title>
</head>
<body>
<h3>Date 1</h3>
<p>La date du jour est:<%= new Date() %></p>
<p>Heure : <%= LocalDateTime.now().getHour() %>
<p>Minute : <%= LocalDateTime.now().getMinute() %>
<h3>Date 2</h3>
<p>
<% if(LocalTime.now().getHour()>=19) { %>
Bonsoir
<%}else{ %>
Bonjour
<%} %>
, il est : <%= LocalDateTime.now().getHour() %> heure
</p>
<h3>Counter</h3>
<p>

<% int varloc =0; %>
</p>
<% for(int i =0; i<2; i++){ %>
<h3>ma variable globale 1 est à : <%= 1-++varglob %></h3>
<h3>ma variable globale 2 est à : <%= ++varglob %></h3>
<h3>ma variable locale est à : <%= ++varloc %></h3>
<%} %>
</body>
</html>
