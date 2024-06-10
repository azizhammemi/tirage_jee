<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.*" %>
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
<link id="style-switch" rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/css/style.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<%@include file="/Header.jsp" %>
<!-- **************** MAIN CONTENT START **************** -->
<main>	
<!-- =======================Page Banner START -->
<section class="pt-0">
	<!-- Main banner background image -->
	<div class="container-fluid px-0">
		<div class="bg-blue h-100px h-md-200px rounded-0" style="background:url(https://eduport.webestica.com/assets/images/pattern/04.png) no-repeat center center; background-size:cover;">
		</div>
	</div>
	<div class="container mt-n4">
		<div class="row">
			<!-- Profile banner START -->
			<div class="col-12">
				<div class="card bg-transparent card-body p-0">
					<div class="row d-flex justify-content-between">
						<!-- Avatar -->
						<div class="col-auto mt-4 mt-md-0">
							<div class="avatar avatar-xxl mt-n3">
								<img class="avatar-img rounded-circle border border-white border-3 shadow" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="">
							</div>
						</div>
						<!-- Profile info -->
						<div class="col d-md-flex justify-content-between align-items-center mt-4">
							<div>
							 <h1 class="my-1 fs-4">
                             <%= session.getAttribute("username") %><i class="bi bi-patch-check-fill text-info small"></i>
                             </h1>							 
							  <h6 class="my-1 fs-4">
                             <%= session.getAttribute("role") %> 
                             </h6>	
							</div>
							<!-- Button -->
							<div class="d-flex align-items-center mt-2 mt-md-0">
								<a href="/ExamenTirage/DemandeTirage.jsp" class="btn btn-success mb-0">Demander un tirage</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Profile banner END -->

				<!-- Advanced filter responsive toggler START -->
				<!-- Divider -->
				<hr class="d-xl-none">
				<div class="col-12 col-xl-3 d-flex justify-content-between align-items-center">
					<a class="h6 mb-0 fw-bold d-xl-none" href="#">Menu</a>
					<button class="btn btn-primary d-xl-none" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
						<i class="fas fa-sliders-h"></i>
					</button>
				</div>
				<!-- Advanced filter responsive toggler END -->
			</div>
		</div>
	</div>
</section>
<!-- =======================
Page Banner END -->

<!-- =======================
Page content START -->
<section class="pt-0">
	<div class="container">
		<div class="row">
			<!-- Left sidebar START -->
			<div class="col-xl-3">
				<!-- Responsive offcanvas body START -->
				<nav class="navbar navbar-light navbar-expand-xl mx-0">
					<div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
						<!-- Offcanvas header -->
						<div class="offcanvas-header bg-light">
							<h5 class="offcanvas-title" id="offcanvasNavbarLabel">My profile</h5>
							<button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
						</div>
						<!-- Offcanvas body -->
						<div class="offcanvas-body p-3 p-xl-0">
							<div class="bg-dark border rounded-3 pb-0 p-3 w-100">
								<!-- Dashboard menu -->
								<div class="list-group list-group-dark list-group-borderless">
									<a class="list-group-item active" href="instructor-dashboard.html"><i class="bi bi-ui-checks-grid fa-fw me-2"></i>Dashboard</a>
									<a class="list-group-item" href="ListeMatiereGroupe.jsp"><i class="bi bi-basket fa-fw me-2"></i>Mes matieres et groupes</a>					
									<form action="LogoutControlleur" method="get">
							    <button type="submit" class="btn btn-danger list-group-item text-danger bg-danger-soft-hover dropdown-item bg-danger-soft-hover">
							        <i class="bi bi-power fa-fw me-2"></i>Sign Out
							    </button>
							</form>
							</div>
							</div>
						</div>
					</div>
				</nav>
				<!-- Responsive offcanvas body END -->
			</div>
			<!-- Left sidebar END -->

			<!-- Main content START -->
			<div class="col-xl-9">

				<!-- Counter boxes START -->
				<div class="row g-4">
					<!-- Counter item -->
					<div class="col-sm-6 col-lg-4">
						<div class="d-flex justify-content-center align-items-center p-4 bg-warning bg-opacity-15 rounded-3">
							<span class="display-6 text-warning mb-0"><i class="fas fa-tv fa-fw"></i></span>
							<div class="ms-4">
								<div class="d-flex">
									<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="25"	data-purecounter-delay="200">0</h5>
								</div>
								<span class="mb-0 h6 fw-light">Total Courses</span>
							</div>
						</div>
					</div>
					<!-- Counter item -->
					<div class="col-sm-6 col-lg-4">
						<div class="d-flex justify-content-center align-items-center p-4 bg-purple bg-opacity-10 rounded-3">
							<span class="display-6 text-purple mb-0"><i class="fas fa-user-graduate fa-fw"></i></span>
							<div class="ms-4">
								<div class="d-flex">
									<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="25"	data-purecounter-delay="200">0</h5>
									<span class="mb-0 h5">K+</span>
								</div>
								<span class="mb-0 h6 fw-light">Total Students</span>
							</div>
						</div>
					</div>
					<!-- Counter item -->
					<div class="col-sm-6 col-lg-4">
						<div class="d-flex justify-content-center align-items-center p-4 bg-info bg-opacity-10 rounded-3">
							<span class="display-6 text-info mb-0"><i class="fas fa-gem fa-fw"></i></span>
							<div class="ms-4">
								<div class="d-flex">
									<h5 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="12" data-purecounter-delay="300">0</h5>
									<span class="mb-0 h5">K</span>
								</div>
								<span class="mb-0 h6 fw-light">Enrolled Students</span>
							</div>
						</div>
					</div>
				</div>
				<!-- Counter boxes END -->

				<!-- Chart START -->
	
				<!-- Course List table START -->
				<div class="row">
					<div class="col-12">
						<div class="card border bg-transparent rounded-3 mt-5">
							<!-- Card header START -->
							<div class="card-header bg-transparent border-bottom">
								<div class="d-sm-flex justify-content-sm-between align-items-center">
									<h3 class="mb-2 mb-sm-0">list  votre matieres</h3>
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
                    <th scope="col" class="border-0">Nom Matiere</th>
         
                </tr>
            </thead>
            <!-- Table body START -->
            <tbody>
                <%
                    List<Matiere> matieres = authentification.EnseignantControlleur.getMatieres(request);
                    for (Matiere matiere : matieres) {
                %>                                 
                <tr>
                    <td><%= matiere.getNomMatiere() %></td>
                 
                     
                       
                    </td>
                </tr>
                <%
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
				</div>
				<!-- Course List table END -->
			</div>
			<!-- Main content END -->
		</div><!-- Row END -->
	</div>
</section>
<!-- =======================
Page content END -->
</main>
<%@include file="/Footer.jsp" %>
<!-- **************** MAIN CONTENT END **************** -->
<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="https://eduport.webestica.com/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="https://eduport.webestica.com/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="https://eduport.webestica.com/assets/vendor/apexcharts/js/apexcharts.min.js"></script>

<!-- Template Functions -->
<script src="https://eduport.webestica.com/assets/js/functions.js"></script>

</body>

<!-- Mirrored from eduport.webestica.com/instructor-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Jun 2022 16:46:50 GMT -->
</html>