<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.*" %>
<%@ page import="authentification.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Liste des Utilisateurs</title>
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
<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/apexcharts/css/apexcharts.css">

<!-- Theme CSS -->
<link id="style-switch" rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/css/style.css">
</head>
<body>
    <%@include file="/Header.jsp" %>
    <section>
        <div class="container">
            <div class="row g-4 g-lg-0 align-items-center">
                <div class="col-md-4 align-items-center text-center">
                    <!-- Image -->
                    <img src="https://eduport.webestica.com/assets/images/element/contact.svg" class="h-400px" alt="">
                </div>
                <!-- Utilisateurs START -->
                <div class="col-md-8">
                    <!-- Card body START -->
                    <div class="col-12">
						<div class="card border bg-transparent rounded-3 mt-5">
							<!-- Card header START -->
							<div class="card-header bg-transparent border-bottom">
								<div class="d-sm-flex justify-content-sm-between align-items-center">
									<h3 class="mb-2 mb-sm-0">Users</h3>
									<a href="#" class="btn btn-sm btn-primary-soft mb-0">View all</a>
								</div>
							</div>
							<!-- Card header END -->

							<!-- Card body START -->
							<div class="card-body">
                        <div class="table-responsive border-0 rounded-3">
                            <!-- Table START -->
                            <table class="table table-dark-gray align-middle p-4 mb-0">
                                <!-- Table head -->
                                <thead>
                                    <tr>                                        
                                        <th scope="col" class="border-0 rounded-start">Nom</th>
                                        <th scope="col" class="border-0">Prénom</th>
                                        <th scope="col" class="border-0">Rôle</th>
                                        <th scope="col" class="border-0">Action</th>
                                    </tr>
                                </thead>
                                <!-- Table body START -->
                                <tbody>
                                <%
        List<User> users = CreateCompte.getUsers(request);
        for (User user : users) {
    %>                                 
                                        <tr>
                                            <td><%= user.getNom() %></td>
                                            <td><%= user.getPrenom() %></td>
                                            <td><%= user.getRole() %></td>
                                           <td style="display: flex;align-items: center;flex-wrap: nowrap;gap: 9px;">
										 <button type="submit" class="btn btn-success">
										 <a href="ModifierUtilisateurServlet?idUser=<%= user.getIdUser() %>">
										
										 <i style="color: #fff;" class="fas fa-pencil-alt"></i></a></button>
										 <form action="SupprimerUtilisateurServlet" method="post">
    <input type="hidden" name="userId" value="<%= user.getIdUser() %>">
    <button type="submit" class="btn btn-danger">
        <i class="fas fa-trash-alt trash-icon-red"></i>
    </button>
</form>                                        	</td>
                                        </tr>
                                 <%
        }
    %>
                                </tbody>
                            </table>
                            <!-- Table END -->
                        </div>
                    </div>
                    <!-- Card body END --><!-- Pagination -->
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
                </div>
                <!-- Utilisateurs END -->
            </div>
        </div>
    </section>							
    <!-- Footer -->
    <%@include file="/Footer.jsp" %>

    <!-- Back to top -->
    <div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>
</body>
</html>