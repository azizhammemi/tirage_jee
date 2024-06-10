<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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

<!-- **************** MAIN CONTENT START **************** -->
<main>
	<section class="p-0 d-flex align-items-center position-relative overflow-hidden">
	
		<div class="container-fluid">
			<div class="row">
				<!-- left -->
				<div class="col-12 col-lg-6 d-md-flex align-items-center justify-content-center bg-primary bg-opacity-10 vh-lg-100">
					<div class="p-3 p-lg-5">
						<!-- Title -->
						<div class="text-center">
							<h2 class="fw-bold">Welcome to our largest community</h2>
							<p class="mb-0 h6 fw-light">Let's learn something new today!</p>
						</div>
						<!-- SVG Image -->
						<img src="assets/images/element/02.svg" class="mt-5" alt="">
						<!-- Info -->
						<div class="d-sm-flex mt-5 align-items-center justify-content-center">
							<ul class="avatar-group mb-2 mb-sm-0">
								<li class="avatar avatar-sm"><img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/01.jpg" alt="avatar"></li>
								<li class="avatar avatar-sm"><img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/02.jpg" alt="avatar"></li>
								<li class="avatar avatar-sm"><img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/03.jpg" alt="avatar"></li>
								<li class="avatar avatar-sm"><img class="avatar-img rounded-circle" src="https://eduport.webestica.com/assets/images/avatar/04.jpg" alt="avatar"></li>
							</ul>
							<!-- Content -->
							<p class="mb-0 h6 fw-light ms-0 ms-sm-3">4k+ Students joined us, now it's your turn.</p>
						</div>
					</div>
				</div>

				<!-- Right -->
				<div class="col-12 col-lg-6 m-auto">
					<div class="row my-5">
						<div class="col-sm-10 col-xl-8 m-auto">
							<!-- Title -->
							<img src="assets/images/element/03.svg" class="h-40px mb-2" alt="">
							<h2>Sign up for your account!</h2>
							<p class="lead mb-4">Nice to see you! Please Sign up with your account.</p>					  
                <form method="post" action="CreateCompte">                  
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Valid email is required: ex@abc.xyz">
                        <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-person"></i></span>
                        <input class="input100 form-control border-0 bg-light rounded-end ps-1" type="text" name="nom" placeholder="Votre nom">
                                           
                    </div>
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4"  data-validate="Valid email is required: ex@abc.xyz">
                        <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-person"></i></span>
                         <input class="input100 form-control border-0 bg-light rounded-end ps-1" type="text" name="prenom" placeholder="Votre prénom">
                        
                    </div>
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Valid email is required: ex@abc.xyz">
                          <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-geo-alt"></i></span>
                        
                       <input class="input100 form-control border-0 bg-light rounded-end ps-1" type="text" name="adresse" placeholder="Votre adresse">                       
                    </div>
                     <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Valid email is required: ex@abc.xyz">
                       <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-envelope-fill"></i></span>
                        <input class="input100 form-control border-0 bg-light rounded-end ps-1" type="text" name="email" placeholder="Email">
                       
                    </div>
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Valid email is required: ex@abc.xyz">
                         <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-person"></i></span>
                        <input class="input100 form-control border-0 bg-light rounded-end ps-1" type="text" name="username" placeholder="Nom d'utilisateur">
                    </div>
                   
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Password is required">
                    <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="fas fa-lock"></i></span>
                      <input type="password" name="password" class="input100 form-control border-0 bg-light rounded-end ps-1" placeholder="*********" 
                      id="inputPassword5" data-sider-insert-id="25ef819a-396a-4700-a878-602537111b6e" data-sider-select-id="519610b6-5804-4871-8449-b205b7b8668b">                     
                    </div>
                    <!-- Ajout du champ "role" -->
                    <div class="wrap-input100 validate-input input-group input-group-lg mb-4" data-validate="Valid email is required: ex@abc.xyz">
                         <span class="input-group-text bg-light rounded-start border-0 text-secondary px-3"><i class="bi bi-person"></i></span>
                        <select class="input100 form-control border-0 bg-light rounded-end ps-1 " name="role">
                            <option value="enseignant">Enseignant</option>
                            <option value="administrateur">Administrateur</option>
                            <option value="agenttirage">Agent de tirage</option>
                        </select>                        
                    </div>
                  
                    
                             <div class="align-items-center mt-0">
									<div class="d-grid">
				                        <button class="login100-form-btn btn btn-primary mb-0">
				                            Enregistrer
				                        </button>
                                      </div>
                              </div>
                </form>
    	                 <div class="row">
								<!-- Divider with text -->
								<div class="position-relative my-4">
									<hr>
									<p class="small position-absolute top-50 start-50 translate-middle bg-body px-5">Or</p>
								<div class="mt-4 text-center">
								<span>Already have an account?<a href="Login.jsp"> Sign in here</a></span>
							</div></div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</main>
<!-- **************** MAIN CONTENT END **************** -->

<!-- Back to top -->
<div class="back-top"><i class="bi bi-arrow-up-short position-absolute top-50 start-50 translate-middle"></i></div>

<!-- Bootstrap JS -->
<script src="https://eduport.webestica.com/assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Functions -->
<script src="https://eduport.webestica.com/assets/js/functions.js"></script>     
   
    <script>
    document.addEventListener("DOMContentLoaded", function() {
        var roleSelect = document.querySelector('select[name="role"]');
        var specialiteInput = document.getElementById('specialiteInput');
        var zoneInput = document.getElementById('zoneInput');
        var permissionInput = document.getElementById('permissionInput');

        roleSelect.addEventListener("change", function() {
            var selectedRole = roleSelect.value;

            // Masquer tous les champs spécifiques
            specialiteInput.style.display = "none";
            zoneInput.style.display = "none";
            permissionInput.style.display = "none";

            // Afficher le champ spécifique en fonction du rôle sélectionné
            if (selectedRole === "enseignant") {
                specialiteInput.style.display = "block";
            } else if (selectedRole === "agenttirage") {
                zoneInput.style.display = "block";
            } else if (selectedRole === "administrateur") {
                permissionInput.style.display = "block";
            }
        });
    });
</script>    
</body>
</html>
