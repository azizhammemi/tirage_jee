<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.*" %>
<%@ page import="authentification.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Eduport - LMS, Education and Course Theme</title>

	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Eduport- LMS, Education and Course Theme">

	<!-- Favicon -->
	<link rel="shortcut icon" href="https://eduport.webestica.com/assets/images/favicon.ico">

	<!-- Google Font -->
	<link rel="preconnect" href="https://fonts.googleapis.com/">
	<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
	<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;700&amp;family=Roboto:wght@400;500;700&amp;display=swap">

	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/bootstrap-icons/bootstrap-icons.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<!-- Theme CSS -->
	<link id="style-switch" rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/css/style.css">

</head>
<body>
<%@include file="/Header.jsp" %>
<section>
	<div class="container">
		<div class="row g-4 g-lg-0 align-items-center">

			<div class="col-md-6 align-items-center text-center">
				<!-- Image -->
				<img src="https://eduport.webestica.com/assets/images/element/contact.svg" class="h-400px" alt="">
           </div>
			<!-- Contact form START -->
			<div class="col-md-6">
				<!-- Title -->
    <h1>Modifier Matiere</h1>
    <form action="ModifierMatiereGroupeServlet" method="post">       					
        <div class="mb-4 bg-light-input">
						<label for="nom" class="form-label">Matiere:</label>
  <select class="form-control form-control-lg cs1" id="idMatiere" name="idMatiere">
    <option style="color: #000 !important;" value="">Sélectionner une matière</option>
    <% 
        List<Matiere> matieres = EnseignantControlleur.getMatieres(request);
        int idMatiereParam = (Integer)request.getAttribute("idMatiere"); // Récupérer la valeur du paramètre idMatiere
        for (Matiere matiereItem : matieres) {
    %>
    <option value="<%= matiereItem.getIdMatiere() %>" <% if (matiereItem.getIdMatiere() == idMatiereParam) { %> selected <% } %>><%= matiereItem.getNomMatiere() %></option>
    <% 
        }
    %>
</select>


</div>
       <div class="mb-4 bg-light-input">
						 <label class="form-label" for="prenom">Groupe :</label>
         <select class="form-control form-control-lg cs1" id="idGroupe" name="idGroupe">
						    <option value="">Sélectionner un groupe</option>
						    <%
						        List<Groupe> groupes = MatiereServlet.getGroupe(request);
						    int idGroupeParam = (Integer)request.getAttribute("idGroupe"); // Récupérer la valeur du paramètre idMatiere
					        for (Groupe groupeItem : groupes) {
					    %>
					    <option value="<%= groupeItem.getIdGroupe() %>" <% if (groupeItem.getIdGroupe() == idGroupeParam) { %> selected <% } %>><%= groupeItem.getNomGroupe() %></option>
					    <% 
					        }
					    %>
						</select> </div>

       <div class="d-grid">
						<button class="btn btn-lg btn-primary mb-0"  type="submit" value="Modifier">Modifier
						</button>
						</div>
    </form>
</body>
</html>
