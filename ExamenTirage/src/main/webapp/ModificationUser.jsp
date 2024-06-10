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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	<!-- Plugins CSS -->
	<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/font-awesome/css/all.min.css">
	<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/bootstrap-icons/bootstrap-icons.css">

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
				<img src="assets/images/element/contact.svg" class="h-400px" alt="">
           </div>
			<!-- Contact form START -->
			<div class="col-md-6">
				<!-- Title -->
    <h1>Modifier Utilisateur</h1>
    <%-- Récupérer l'ID de l'utilisateur à partir de l'URL --%>
    <%
        String userIdString = request.getParameter("idUser");
        int userId = 0; // Initialiser à une valeur par défaut
        if (userIdString != null && !userIdString.isEmpty()) {
            userId = Integer.parseInt(userIdString);    
        }
        // Charger les détails de l'utilisateur à partir de la base de données en utilisant l'ID récupéré
        UserDAO userDAO = new UserDAO();
        User user = userDAO.getUserById(userId);
    %>
    <form action="ModifierUtilisateurServlet" method="post">
        
						<input class="form-control form-control-lg" type="hidden" name="idUser" value="<%= userId %>">
        <div class="mb-4 bg-light-input">
						<label for="nom" class="form-label">Nom:</label>
        <input class="form-control form-control-lg" type="text" id="nom" name="nom" value="<%= (user != null) ? user.getNom() : "" %>">
       </div>
       <div class="mb-4 bg-light-input">
						 <label class="form-label" for="prenom">Prénom :</label>
        <input class="form-control form-control-lg" type="text" id="prenom" name="prenom" value="<%= (user != null) ? user.getPrenom() : "" %>">
       </div>
       <div class="mb-4 bg-light-input">
        <label class="form-label" for="adresse">Adresse :</label>
        <input class="form-control form-control-lg" type="text" id="adresse" name="adresse" value="<%= (user != null) ? user.getAdresse() : "" %>">
         </div>
       <div class="mb-4 bg-light-input">
       <label class="form-label" for="email">Email :</label>
        <input class="form-control form-control-lg" type="email" id="email" name="email" value="<%= (user != null) ? user.getEmail() : "" %>">
        </div>
       <div class="mb-4 bg-light-input">
        <label class="form-label"  for="username">Nom d'utilisateur :</label>
        <input class="form-control form-control-lg" type="text" id="username" name="username" value="<%= (user != null) ? user.getUsername() : "" %>">
        </div>
       <div class="mb-4 bg-light-input">
        <label class="form-label"  for="password">Mot de passe :</label>
        <input class="form-control form-control-lg" type="password" id="password" name="password" value="<%= (user != null) ? user.getPassword() : "" %>">
        </div>
       <div class="mb-4 bg-light-input">
        <label class="form-label" for="role">Rôle :</label>
        <input class="form-control form-control-lg" type="text" id="role" name="role" value="<%= (user != null) ? user.getRole() : "" %>">
        </div>
       <div class="d-grid">
						<button class="btn btn-lg btn-primary mb-0"  type="submit" value="Modifier">Modifier
						</button>
						</div>
    </form>
</body>
</html>
