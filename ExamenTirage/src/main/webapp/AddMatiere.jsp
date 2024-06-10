<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.*" %>
<%@ page import="authentification.MatiereServlet" %>
<!DOCTYPE html>
<html lang="en">
<head>
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
<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/apexcharts/css/apexcharts.css">

<!-- Theme CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
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
			<h2>Ajouter Matière</h2>
    <form action="MatiereServlet" method="post">
        <label for="nomMatiere">Nom Matière:</label>
        <input type="text" id="nomMatiere" name="nomMatiere" required><br><br>

        <label for="enseignants">Enseignant:</label>
     <label for="enseignants">Enseignant:</label>
<select id="enseignants" name="enseignants">
    <% List<User> enseignants = MatiereServlet.getEnseignant(request);
       for (User enseignant : enseignants) { %>
       <option value="<%= enseignant.getIdUser() %>"><%= enseignant.getNom() %> <%= enseignant.getPrenom() %></option>
    <% } %>
</select><br><br>

<label for="groupes">Groupe:</label>
<select id="groupes" name="groupes">
    <% List<Groupe> groupes = MatiereServlet.getGroupe(request);
       for (Groupe groupe : groupes) { %>
       <option value="<%= groupe.getIdGroupe() %>"><%= groupe.getNomGroupe() %></option>
    <% } %>
</select><br><br>

        <input type="submit" value="Ajouter">
    </form>
			
			</div>
			<!-- Contact form END -->
		</div>
	</div>
</section>
<!-- =======================
Page content END -->
</main>
<%@include file="/Footer.jsp" %>
<!-- **************** MAIN CONTENT END **************** -->
<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

</body>

<!-- Mirrored from eduport.webestica.com/instructor-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Jun 2022 16:46:50 GMT -->
</html>