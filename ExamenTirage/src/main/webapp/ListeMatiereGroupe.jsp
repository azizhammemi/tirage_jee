<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.Groupe" %>
<%@ page import="authentificationrole.models.Matiere" %>
<%@ page import="authentification.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta Tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="author" content="Webestica.com">
	<meta name="description" content="Eduport- LMS, Education and Course Theme">
	<!-- Favicon -->
	<link rel="shortcut icon" href="assets/images/favicon.ico">
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
<body>
<!-- Course List table START -->
				<div class="row">
					<div class="col-12">
						<div class="card border bg-transparent rounded-3 mt-5">
							<!-- Card header START -->
							<div class="card-header bg-transparent border-bottom">
								<div class="d-sm-flex justify-content-sm-between align-items-center">
									<h3 class="mb-2 mb-sm-0">Matières</h3>
									<a href="#" class="btn btn-sm btn-primary-soft mb-0">View all</a>
								</div>
							</div>
								<!-- Card body START -->
		<div class="card-body">
			<div class="table-responsive border-0 rounded-3">
				<!-- Table START -->
				<table class="table table-dark-gray align-middle p-4 mb-0">
					<!-- Table head -->
					<thead>
						<tr>
							<th scope="col" class="border-0 rounded-start">Nom du matiere</th>
							<th scope="col" class="border-0">Nom du Groupe</th>
							<th scope="col" class="border-0">Action</th>
						</tr>
					</thead>
					<!-- Table body START -->
				<tbody>
    <% 
        List<Matiere> matieres = EnseignantControlleur.getMatieres(request); 
        for (Matiere matiere : matieres) { 
            List<Groupe> groupes = MatiereServlet.getGroupesByMatiere(request, matiere.getIdMatiere()); 
            for (Groupe groupe : groupes) { 
    %>
    <tr>
        <td><%= matiere.getNomMatiere() %></td>
        <td><%= groupe.getNomGroupe() %></td>
        <td>
            <button type="button" class="btn btn-success">
                <a href="ModifierMatiereGroupeServlet?idMatiere=<%= matiere.getIdMatiere() %>&idGroupe=<%= groupe.getIdGroupe() %>">
                    <i style="color: #fff;" class="fas fa-pencil-alt"></i>
                </a>
            </button>
            <form action="SuppressionMatiereGroupeServlet" method="post">
    <input type="hidden" name="IdMatiere" value="<%= matiere.getIdMatiere() %>">
<input type="hidden" name="IdGroupe" value="<%= groupe.getIdGroupe() %>">
<button type="submit" class="btn btn-danger">
        <i class="fas fa-trash-alt trash-icon-red"></i>
    </button>
</form>                                
        </td>
    </tr>
    <% 
            } 
        } 
    %>
</tbody>
				</table>
				<!-- Table END -->
			</div>
			<!-- Pagination -->
			<div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-3">
				<!-- Content -->
				<p class="mb-0 text-center text-sm-start">Showing 1 to 8 of 20 entries</p>
				<!-- Pagination -->
				<nav class="d-flex justify-content-center mb-0" aria-label="navigation">
					<ul class="pagination pagination-sm pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
						<li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-left"></i></a></li>
						<li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
						<li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
						<li class="page-item mb-0"><a class="page-link" href="#">3</a></li>
						<li class="page-item mb-0"><a class="page-link" href="#"><i class="fas fa-angle-right"></i></a></li>
					</ul>
				</nav>
			</div>
		</div>
		<!-- Card body START -->
	</div>
</div>
						
</body>
</html>