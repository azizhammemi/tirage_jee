<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ page import="java.util.List" %>
<%@ page import="authentificationrole.models.*" %>
<%@ page import="authentification.*"%>
<%
  
%>
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
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/vendor/apexcharts/css/apexcharts.css">

<!-- Theme CSS -->
<link id="style-switch" rel="stylesheet" type="text/css" href="https://eduport.webestica.com/assets/css/style.css">
    <style>
        .notif-badge {
            width: 20px;
            height: 20px;
            background: #d6293e;
            border-radius: 50%;
            position: absolute;
            top: -11px !important;
            right: -7px !important;
            z-index: 1;
            color: #000 !important;
            text-align: center !important;
            font-weight: 900 !important;
        }
    </style>
</head>
<body>
<%@include file="/Header.jsp" %>
<main> 
<section class="pt-0">
    <div class="container-fluid px-0">
        <div class="bg-blue h-100px h-md-200px rounded-0" style="background:url('https://eduport.webestica.com/assets/images/pattern/01.png') no-repeat center center; background-size:cover;">
        </div>
    </div>
    <div class="container mt-n4">
        <div class="row">
            <div class="col-12">
                <div class="card bg-transparent card-body p-0">
                    <div class="row d-flex justify-content-between">
                        <div class="col-auto mt-4 mt-md-0">
                            <div class="avatar avatar-xxl mt-n3">
                                <img class="avatar-img rounded-circle border border-white border-3 shadow" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="">
                            </div>
                        </div>
                        <div class="col d-md-flex justify-content-between align-items-center mt-4">
                            <div>
                             <h1 class="my-1 fs-4">
                             <%= session.getAttribute("username") %><i class="bi bi-patch-check-fill text-info small"></i>
                             </h1>                            
                              <h6 class="my-1 fs-4">
                             <%= session.getAttribute("role") %> 
                             </h6> 
                            </div>
                            <div class="d-flex align-items-center mt-2 mt-md-0">
                                <ul class="navbar-nav flex-row align-items-center">
                                    <li class="nav-item ms-2 ms-md-3 dropdown">
                                        <a class="btn btn-light btn-round mb-0" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                                            <i class="bi bi-bell fa-fw"></i>
                                        </a>
                                        <span class="notif-badge animation-blink"></span>
                                        <div class="dropdown-menu dropdown-animation dropdown-menu-end dropdown-menu-size-md p-0 shadow-lg border-0">
                                            <div class="card bg-transparent">
                                                <div class="card-header bg-transparent border-bottom py-4 d-flex justify-content-between align-items-center">
                                                    <h6 class="m-0">Notifications <span class="badge bg-danger bg-opacity-10 text-danger ms-2">2 new</span></h6>
                                                    <a class="small" href="#">Clear all</a>
                                                </div>
                                                <div class="card-body p-0">
                                                    <ul class="list-group list-unstyled list-group-flush">
                                                        <!-- Notif items here -->
                                                    </ul>
                                                </div>
                                                <div class="card-footer bg-transparent border-0 py-3 text-center position-relative">
                                                    <a href="#" class="stretched-link">See all incoming activity</a>
                                                </div>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="pt-0">
    <div class="container">
        <div class="row">
            <div class="col-xl-3">
                <nav class="navbar navbar-light navbar-expand-xl mx-0">
                    <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
                        <div class="offcanvas-header bg-light">
                            <h5 class="offcanvas-title" id="offcanvasNavbarLabel">My profile</h5>
                            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                        </div>
                        <div class="offcanvas-body p-3 p-xl-0">
                            <div class="bg-dark border rounded-3 pb-0 p-3 w-100">
                                <div class="list-group list-group-dark list-group-borderless">
                                    <!-- Dashboard menu -->
                                    <a class="list-group-item active" href="instructor-dashboard.html"><i class="bi bi-ui-checks-grid fa-fw me-2"></i>Dashboard</a>
                                    <a class="list-group-item" href=""><i class="bi bi-basket fa-fw me-2"></i>Listes des demandes</a>
                                    <a class="list-group-item" href=""><i class="bi bi-people fa-fw me-2"></i>Listes des etudiants</a>
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
            </div>

            <div class="col-xl-9">
                <div class="row">
                    <div class="col-12">
                        <div class="card border bg-transparent rounded-3 mt-5">
                            <div class="card-header bg-transparent border-bottom">
                                <div class="d-sm-flex justify-content-sm-between align-items-center">
                                    <h3 class="mb-2 mb-sm-0">Listes de demandes</h3>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="table-responsive border-0 rounded-3">
                             <table>
                             <thead>
        <tr>
            <th>ID</th>
            <th>Enseignant Name</th>
            <th>Matiere Name</th>
            <th>Groupe Name</th>
            <th>Date Tirage</th>
            <th>Nomber</th>
            <th>Fichier</th>
            
        </tr>
        </thead>
       <tbody>
                <%
                    List<Tirage> tiragee = authentification.AgentControlleur.getAllTirages(request);
                    for (Tirage tirage : tiragee) {
                %>                                 
                <tr>
                    				 <td><%= tirage.getId() %></td>
                                     <td><%= tirage.getEnseignantName() %></td>
                                     <td><%= tirage.getGroupeName() %></td>
                                     <td><%= tirage.getDateTirage() %></td>
                                     <td><%= tirage.getMatiereName() %></td>
                                     <td><%= tirage.getNomber() %></td>
                                     
                                     <td>
    <a href="AgentControlleur?action=downloadFile&fileName=<%= tirage.getFichier() %>"><%= tirage.getFichier() %></a>
                 
                     
                       
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
    </table>
                                </div>
                                <div class="d-sm-flex justify-content-sm-between align-items-sm-center mt-3">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</main>
<%@include file="/Footer.jsp" %>
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>
<script src="https://eduport.webestica.com/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://eduport.webestica.com/assets/vendor/purecounterjs/dist/purecounter_vanilla.js"></script>
<script src="https://eduport.webestica.com/assets/vendor/apexcharts/js/apexcharts.min.js"></script>
<script src="https://eduport.webestica.com/assets/js/functions.js"></script>
</body>
</html>
