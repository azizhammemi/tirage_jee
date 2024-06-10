<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard</title>
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
    <h2>Welcome <%= session.getAttribute("username") %></h2>
    <p>Role: <%= session.getAttribute("role") %></p>
    <a href="logout">Logout</a>
</body>
</html>
