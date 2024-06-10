<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Eduport- LMS, Education and Course Theme</title>
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
	<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/overlay-scrollbar/css/OverlayScrollbars.min.css">
	<!-- Theme CSS -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
	
	<link id="style-switch" rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/css/style.css">
</head>
<body>
<!-- **************** MAIN CONTENT START **************** -->
<main>	
<!-- Sidebar START -->
<nav class="navbar sidebar navbar-expand-xl navbar-dark bg-dark">

	<!-- Navbar brand for xl START -->
	<div class="d-flex align-items-center">
		<a class="navbar-brand" href="#">
			<img class="navbar-brand-item" src="logo.png" alt="">
		</a>
	</div>
	<!-- Navbar brand for xl END -->
	
	<div class="offcanvas offcanvas-start flex-row custom-scrollbar h-100" data-bs-backdrop="true" tabindex="-1" id="offcanvasSidebar">
		<div class="offcanvas-body sidebar-content d-flex flex-column bg-dark">

			<!-- Sidebar menu START -->
			<ul class="navbar-nav flex-column" id="navbar-sidebar">
				
				<!-- Menu item 1 -->
				<li class="nav-item"><a href="#" class="nav-link active"><i class="bi bi-house fa-fw me-2"></i>Dashboard</a></li>
				
				<!-- Title -->
				<li class="nav-item ms-2 my-2">Pages</li>

			<!-- menu item 2 --> <li class="nav-item"> <a class="nav-link" data-bs-toggle="collapse" href="#collapsepage" role="button" aria-expanded="false" aria-controls="collapsepage"> <i class="bi bi-basket fa-fw me-2"></i>Matires </a> <!-- Submenu --> <ul class="nav collapse flex-column" id="collapsepage" data-bs-parent="#navbar-sidebar"> <li class="nav-item"> <a class="nav-link" href="AddMatiere.jsp">Ajouter matires</a></li> </ul> </li> <!-- Menu item 3 --> <li class="nav-item"> <a class="nav-link" data-bs-toggle="collapse" href="#collapsepage" role="button" aria-expanded="false" aria-controls="collapsepage"> <i class="bi bi-basket fa-fw me-2"></i>Groupes </a> <!-- Submenu --> <ul class="nav collapse flex-column" id="collapsepage" data-bs-parent="#navbar-sidebar"> <li class="nav-item"> <a class="nav-link" href="AddGroupe.jsp">Ajouter groupe</a></li> </ul> </li> <!-- Menu item 4 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapseinstructors" role="button" aria-expanded="false" aria-controls="collapseinstructors">
						<i class="fas fa-user-tie fa-fw me-2"></i>Enseignants
					</a>					
				</li>				
				<!-- Menu item 5 -->
				<!-- Menu item 6 -->
				<li class="nav-item"> <a class="nav-link" href="#"><i class="far fa-chart-bar fa-fw me-2"></i>Earnings</a></li>

				<!-- Menu item 7 -->
				<li class="nav-item"> <a class="nav-link" href="adminsetting.jsp"><i class="fas fa-user-cog fa-fw me-2"></i>Admin Settings</a></li>
				<!-- Menu item 8 -->
				<li class="nav-item">
					<a class="nav-link" data-bs-toggle="collapse" href="#collapseauthentication" role="button" aria-expanded="false" aria-controls="collapseauthentication">
						<i class="bi bi-lock fa-fw me-2"></i>Authentication
					</a>
					<!-- Submenu -->
					<ul class="nav collapse flex-column" id="collapseauthentication" data-bs-parent="#navbar-sidebar">
						<li class="nav-item"> <a class="nav-link" href="Registration.jsp">Sign Up</a></li>
						<li class="nav-item"> <a class="nav-link" href="Login.jsp">Sign In</a></li>
					</ul>
				</li>

				<!-- Title -->

				<!-- Menu item 9 -->
				<!-- Menu item 10 -->
			</ul>
			<!-- Sidebar menu end -->

			<!-- Sidebar footer START -->
			<div class="px-3 mt-auto pt-3">
				<div class="d-flex align-items-center justify-content-between text-primary-hover">
						<a class="h5 mb-0 text-body" href="admin-setting.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Settings">
							<i class="bi bi-gear-fill"></i>
						</a>
						<a class="h5 mb-0 text-body" href="index.html" data-bs-toggle="tooltip" data-bs-placement="top" title="Home">
							<i class="bi bi-globe"></i>
						</a>
						<form action="LogoutControlleur" method="get">
    <button type="submit" class="btn btn-danger dropdown-item bg-danger-soft-hover">
        <i class="bi bi-power fa-fw me-2"></i>Sign Out
    </button>
</form>
				</div>
			</div>
			<!-- Sidebar footer END -->
			
		</div>
	</div>
</nav>
<!-- Sidebar END -->

<!-- Page content START -->
<div class="page-content">

	<!-- Top bar START -->
	<nav class="top-bar navbar-light border-bottom py-0 py-xl-3">
		<div class="container-fluid p-0">
			<div class="d-flex align-items-center w-100">

				<!-- Logo START -->
				<div class="d-flex align-items-center d-xl-none">
					<a class="navbar-brand" href="index.html">
						<img class="light-mode-item navbar-brand-item h-30px" src="https://eduport.webestica.com/assets/images/logo-mobile.svg" alt="">
						<img class="dark-mode-item navbar-brand-item h-30px" src="https://eduport.webestica.com/assets/images/logo-mobile-light.svg" alt="">
					</a>
				</div>
				<!-- Logo END -->

				<!-- Toggler for sidebar START -->
				<div class="navbar-expand-xl sidebar-offcanvas-menu">
					<button class="navbar-toggler me-auto" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasSidebar" aria-controls="offcanvasSidebar" aria-expanded="false" aria-label="Toggle navigation" data-bs-auto-close="outside">
						<i class="bi bi-text-right fa-fw h2 lh-0 mb-0 rtl-flip" data-bs-target="#offcanvasMenu"> </i>
					</button>
				</div>
				<!-- Toggler for sidebar END -->
				
				<!-- Top bar left -->
				<div class="navbar-expand-lg ms-auto ms-xl-0">
					
					<!-- Toggler for menubar START -->
					<button class="navbar-toggler ms-auto" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTopContent" aria-controls="navbarTopContent" aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-animation">
							<span></span>
							<span></span>
							<span></span>
						</span>
					</button>
					<!-- Toggler for menubar END -->

					<!-- Topbar menu START -->
					<div class="collapse navbar-collapse w-100" id="navbarTopContent">
						<!-- Top search START -->
						<div class="nav my-3 my-xl-0 flex-nowrap align-items-center">
							<div class="nav-item w-100">
								<form class="position-relative">
									<input class="form-control pe-5 bg-secondary bg-opacity-10 border-0" type="search" placeholder="Search" aria-label="Search">
									<button class="btn bg-transparent px-2 py-0 position-absolute top-50 end-0 translate-middle-y" type="submit"><i class="fas fa-search fs-6 text-primary"></i></button>
								</form>
							</div>
						</div>
						<!-- Top search END -->
					</div>
					<!-- Topbar menu END -->
				</div>
				<!-- Top bar left END -->
				
				<!-- Top bar right START -->
				<div class="ms-xl-auto">
					<ul class="navbar-nav flex-row align-items-center">

						<!-- Notification dropdown START -->
						
						<!-- Notification dropdown END -->

						<!-- Profile dropdown START -->
						<li class="nav-item ms-2 ms-md-3 dropdown">
							<!-- Avatar -->
							<a class="avatar avatar-sm p-0" href="#" id="profileDropdown" role="button" data-bs-auto-close="outside" data-bs-display="static" data-bs-toggle="dropdown" aria-expanded="false">
								<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="avatar">
							</a>

							<!-- Profile dropdown START -->
							<ul class="dropdown-menu dropdown-animation dropdown-menu-end shadow pt-3" aria-labelledby="profileDropdown">
								<!-- Profile info -->
								<li class="px-3">
									<div class="d-flex align-items-center">
										<!-- Avatar -->
										<div class="avatar me-3">
											<img class="avatar-img rounded-circle shadow" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="avatar">
										</div>
										<div>
											<a class="h6 mt-2 mt-sm-0" href="#"><%= session.getAttribute("username") %></a>
											<p class="small m-0"><%= session.getAttribute("role") %></p>
										</div>
									</div>
									<hr>
								</li>

								<!-- Links -->
								<li><a class="dropdown-item" href="#"><i class="bi bi-person fa-fw me-2"></i>Edit Profile</a></li>
								<li><a class="dropdown-item" href="#"><i class="bi bi-gear fa-fw me-2"></i>Account Settings</a></li>
								<li><a class="dropdown-item" href="#"><i class="bi bi-info-circle fa-fw me-2"></i>Help</a></li>
								<li>
								<form action="LogoutControlleur" method="get">
    <button type="submit" class="btn btn-danger dropdown-item bg-danger-soft-hover">
        <i class="bi bi-power fa-fw me-2"></i>Sign Out
    </button>
</form>
								</li>
								<li> <hr class="dropdown-divider"></li>

								<!-- Dark mode switch START -->
								<li>
									<div class="modeswitch-wrap" id="darkModeSwitch">
										<div class="modeswitch-item">
											<div class="modeswitch-icon"></div>
										</div>
										<span>Dark mode</span>
									</div>
								</li> 
								<!-- Dark mode switch END -->
							</ul>
							<!-- Profile dropdown END -->
						</li>
						<!-- Profile dropdown END -->
					</ul>
				</div>
				<!-- Top bar right END -->
			</div>
		</div>
	</nav>
	<!-- Top bar END -->

	<!-- Page main content START -->
	<div class="page-content-wrapper border">

		<!-- Title -->
		<div class="row">
			<div class="col-12 mb-3">
				<h1 class="h3 mb-2 mb-sm-0">Dashboard</h1>
			</div>
		</div>

		<!-- Counter boxes START -->
		<div class="row g-4 mb-4">
			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-warning bg-opacity-15 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1958" data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">Completed Courses</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-warning text-white mb-0"><i class="fas fa-tv fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-purple bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1600"	data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">Enrolled Courses</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-purple text-white mb-0"><i class="fas fa-user-tie fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-primary bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="1235"	data-purecounter-delay="200">0</h2>
							<span class="mb-0 h6 fw-light">Course In Progress</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-primary text-white mb-0"><i class="fas fa-user-graduate fa-fw"></i></div>
					</div>
				</div>
			</div>

			<!-- Counter item -->
			<div class="col-md-6 col-xxl-3">
				<div class="card card-body bg-success bg-opacity-10 p-4 h-100">
					<div class="d-flex justify-content-between align-items-center">
						<!-- Digit -->
						<div>
							<div class="d-flex">
								<h2 class="purecounter mb-0 fw-bold" data-purecounter-start="0" data-purecounter-end="845"	data-purecounter-delay="200">0</h2>
								<span class="mb-0 h2 ms-1">hrs</span>
							</div>
							<span class="mb-0 h6 fw-light">Total Watch Time</span>
						</div>
						<!-- Icon -->
						<div class="icon-lg rounded-circle bg-success text-white mb-0"><i class="bi bi-stopwatch-fill fa-fw"></i></div>
					</div>
				</div>
			</div>
		</div>
		<!-- Counter boxes END -->

		<!-- Chart and Ticket START -->
	
		<!-- Chart and Ticket END -->

		<!-- Top listed Cards START -->
		<div class="row g-4">

			<!-- Top instructors START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">

					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">Top Instructors</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/09.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">Lori Stevens<i class="bi bi-patch-check-fill text-info small ms-1"></i></h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>25 Courses</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>4.5/5.0</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/03.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">Dennis Barrett</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>18 Courses</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>4.5/5.0</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">Jacqueline Miller<i class="bi bi-patch-check-fill text-info small ms-1"></i></h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>21 Courses</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>4.8/5.0</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/04.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">Billy Vasquez</h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>15 Courses</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>4.5/5.0</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->

						<hr><!-- Divider -->

						<!-- Instructor item START -->
						<div class="d-sm-flex justify-content-between align-items-center">
							<!-- Avatar and info -->
							<div class="d-sm-flex align-items-center mb-1 mb-sm-0">
								<!-- Avatar -->
								<div class="avatar avatar-md flex-shrink-0">
									<img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/05.jpg" alt="avatar">
								</div>
								<!-- Info -->
								<div class="ms-0 ms-sm-2 mt-2 mt-sm-0">
									<h6 class="mb-1">Amanda Reed<i class="bi bi-patch-check-fill text-info small ms-1"></i></h6>
									<ul class="list-inline mb-0 small">
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-book text-purple me-1"></i>29 Courses</li>
										<li class="list-inline-item fw-light me-2 mb-1 mb-sm-0"><i class="fas fa-star text-warning me-1"></i>4.5/5.0</li>
									</ul>
								</div>
							</div>
							<!-- Button -->
							<a href="#" class="btn btn-sm btn-light mb-0">View</a>
						</div>
						<!-- Instructor item END -->
						
					</div>
					<!-- Card body END -->
				</div>
			</div>
			<!-- Top instructors END -->

			<!-- Notice Board START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">
					<!-- Card header -->
					<div class="card-header border-bottom p-4">
						<h5 class="card-header-title">Notice board</h5>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">
						<div class="custom-scrollbar h-300px">

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-purple bg-opacity-10 text-purple rounded-2 flex-shrink-0"><i class="fas fa-user-tie fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">Join New Instructor</a></h6>
										<p class="mb-0">Amongst moments do in arrived Fat weddings believed prospect</p>
										<span class="small">5 min ago</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-orange bg-opacity-10 text-orange rounded-2 flex-shrink-0"><i class="fas fa-book-open fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">Update New Course</a></h6>
										<p class="mb-0">Arrived Fat weddings believed prospect</p>
										<span class="small">4 hour ago</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-info bg-opacity-10 text-info rounded-2 flex-shrink-0"><i class="fas fa-book fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">Update Syllabus</a></h6>
										<p class="mb-0">Arrived Fat weddings believed prospect</p>
										<span class="small">2 days ago</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->

							<hr><!-- Divider -->

							<!-- Notice Board item START -->
							<div class="d-flex justify-content-between position-relative">
								<div class="d-sm-flex">
									<div class="icon-lg bg-danger bg-opacity-10 text-danger rounded-2 flex-shrink-0"><i class="fas fa-globe fs-5"></i></div>
									<!-- Info -->
									<div class="ms-0 ms-sm-3 mt-2 mt-sm-0">
										<h6 class="mb-0"><a href="#" class="stretched-link">Update New Feature</a></h6>
										<p class="mb-0">Arrived Fat weddings believed prospect</p>
										<span class="small">3 days ago</span>
									</div>
								</div>
							</div>
							<!-- Notice Board item END -->
						</div>
					</div>
					<!-- Card body END -->

					<!-- Card footer START -->
					<div class="card-footer border-top">
						<div class="alert alert-success d-flex align-items-center mb-0 py-2">
							<div>
								<small class="mb-0">45 more notices listed</small>
							</div>
							<div class="ms-auto">
								<a class="btn btn-sm btn-success-soft mb-0" href="#!"> View all </a>
							</div>
						</div>
					</div>
					<!-- Card footer START -->
				</div>
			</div>
			<!-- Notice Board END -->

			<!-- Traffic sources START -->
			<div class="col-lg-6 col-xxl-4">
				<div class="card shadow h-100">

					<!-- Card header -->
					<div class="card-header border-bottom d-flex justify-content-between align-items-center p-4">
						<h5 class="card-header-title">Traffic Sources</h5>
						<a href="#" class="btn btn-link p-0 mb-0">View all</a>
					</div>

					<!-- Card body START -->
					<div class="card-body p-4">
						<!-- Chart -->
						<div class="col-sm-6 mx-auto">
							<div id="ChartTrafficViews"></div>
						</div>

						<!-- Content -->
						<ul class="list-group list-group-borderless mt-3">
							<li class="list-group-item"><i class="text-primary fas fa-circle me-2"></i>Create a Design System in Figma</li>
							<li class="list-group-item"><i class="text-success fas fa-circle me-2"></i>The Complete Digital Marketing Course - 12 Courses in 1</li>
							<li class="list-group-item"><i class="text-warning fas fa-circle me-2"></i>Google Ads Training: Become a PPC Expert</li>
							<li class="list-group-item"><i class="text-danger fas fa-circle me-2"></i>Microsoft Excel - Excel from Beginner to Advanced</li>
						</ul>
					</div>
				</div>
				<!-- Card body END -->
			</div>
			<!-- Traffic sources END -->

		</div>
		<!-- Top listed Cards END -->

	</div>
	<!-- Page main content END -->
</div>
<!-- Page content END -->

</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="https://eduport.webestica.com/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Vendors -->
<script src="https://eduport.webestica.com/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="https://eduport.webestica.com/assets/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="https://eduport.webestica.com/assets/vendor/overlay-scrollbar/js/overlayscrollbars.min.html"></script>

<!-- Template Functions -->
<script src="https://eduport.webestica.com/assets/js/functions.js"></script>


</body>

<!-- Mirrored from eduport.webestica.com/admin-dashboard.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 08 Jun 2022 16:46:56 GMT -->
</html>