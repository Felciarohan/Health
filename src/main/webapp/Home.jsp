<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Emergency Medical Record System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"> <!-- Added FontAwesome for icons -->
    <style>
       
        * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    scroll-behavior: smooth;
}

body, html {
    width: 100%;
    height: 100%;
    font-family: 'Poppins', sans-serif;
    color: white;
    background: linear-gradient(to bottom, #0d7377, #14ffec);
    overflow-x: hidden;
}


.navbar {
    width: 100%;
    position: fixed;
    top: 0;
    background: rgba(0, 0, 0, 0.7); 
    backdrop-filter: blur(10px);
    padding: 12px 20px;
    z-index: 1000;
    border-bottom: 3px solid #14ffec; 
}

.navbar-nav .nav-link {
    color: white !important;
    font-weight: 600;
    padding: 12px 15px;
    transition: color 0.3s ease-in-out, background 0.3s ease-in-out;
}

.navbar-nav .nav-link:hover {
    color: #0d7377 !important;
 
    border-radius: 5px;
}


.hero {
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    text-align: center;
    position: relative;
    background: url('https://www.transparenttextures.com/patterns/medical-cross.png'), 
                linear-gradient(to right, rgba(0, 0, 0, 0.7), rgba(20, 255, 236, 0.5));
    background-size: cover;
    backdrop-filter: blur(5px);
}

.hero h1 {
    font-size: 3.5rem;
    font-weight: bold;
    text-shadow: 2px 2px 15px rgba(255, 255, 255, 0.3);
    animation: fadeInUp 1.5s ease-in-out;
    margin-bottom: 15px;
}

.hero p {
    font-size: 1.4rem;
    opacity: 0.9;
    margin-bottom: 30px;
    animation: fadeInUp 1.8s ease-in-out;
}


.hero .btn-light {
    background-color: rgba(255, 255, 255, 0.2);
    border: 2px solid white;
    color: white;
    padding: 14px 28px;
    font-size: 1.2rem;
    font-weight: bold;
    transition: all 0.3s ease-in-out;
    backdrop-filter: blur(5px);
    animation: fadeInUp 2s ease-in-out;
}

.hero .btn-light:hover {
    background-color: white;
    color: #0d7377;
    transform: scale(1.1);
}


.section {
    width: 100%;
    padding: 100px 10%;
    text-align: center;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    min-height: 70vh;
    position: relative;
}


#features {
    background: url('https://www.transparenttextures.com/patterns/medical-pattern.png'), 
                rgba(13, 115, 119, 0.9);
    background-size: cover;
    color: white;
    animation: fadeInUp 1.8s ease-in-out;
}

#security {
    background: url('https://www.transparenttextures.com/patterns/medical-cross.png'), 
                rgba(255, 255, 255, 0.1);
    background-size: cover;
    color: black;
    animation: fadeInUp 1.8s ease-in-out;
}



.feature-card {
    width: 320px;
    text-align: center;
    padding: 20px;
    background: rgba(255, 255, 255, 0.15);
    border-radius: 10px;
    backdrop-filter: blur(5px);
    transition: all 0.3s ease-in-out;
    margin: 20px;
    animation: fadeInUp 2s ease-in-out;
}

.feature-card:hover {
    transform: translateY(-5px);
    background: rgba(255, 255, 255, 0.3);
}


footer {
    width: 100%;
    background: rgba(13, 115, 119, 0.8);
    color: white;
    text-align: center;
    padding: 15px;
}


@keyframes fadeInUp {
    0% { opacity: 0; transform: translateY(20px); }
    100% { opacity: 1; transform: translateY(0); }
}

.emergency-section {
    width: 100%;
    min-height: 80vh;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    background: url('https://www.transparenttextures.com/patterns/medical-icons.png'), 
    rgba(13, 115, 119, 0.9);
    background-size: cover;
    color: white;
    position: relative;
    animation: fadeInUp 1.5s ease-in-out;
    padding: 80px 20px;
}

.emergency-section h2 {
    font-size: 3rem;
    font-weight: bold;
    text-transform: uppercase;
    text-shadow: 3px 3px 15px rgba(255, 255, 255, 0.5);
    animation: flash 1s infinite alternate;
}

.emergency-section p {
    font-size: 1.2rem;
    padding: 20px;
    opacity: 0.9;
    animation: pulse 1.5s infinite;
}

.emergency-btn {
    background-color: rgba(255, 255, 255, 0.2);
    border: 3px solid white;
    color: white;
    padding: 14px 28px;
    font-size: 1.2rem;
    font-weight: bold;
    transition: all 0.3s ease-in-out;
    backdrop-filter: blur(5px);
    animation: shake 1.5s infinite alternate;
}
.container1{
    height:480px;
    padding:100px;
}
    </style>
</head>
<body>

   
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="Home.jsp">Emergency Medical Records</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="Home.jsp">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="signin.jsp">Sign In</a></li>
                    <li class="nav-item"><a class="nav-link" href="signup.jsp">Sign Up</a></li>
                    <li class="nav-item"><a class="nav-link" href="Search.jsp">Search</a></li>
                    <li class="nav-item"><a class="nav-link" href="AddPatients.jsp">Add Patients</a></li>
                    <li class="nav-item"><a class="nav-link" href="Emergency.jsp">Emergency Contact</a></li>
                    <li class="nav-item"><a class="nav-link" href="Aboutus.jsp">About Us</a></li>
                    <li class="nav-item"><a class="nav-link" href="AI.jsp">AI</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Saving Lives Through Smart Medical Data Access 🌊</h1>
            <p>Instant access to medical records for emergency situations.</p>
            <a href="signup.jsp" class="btn btn-light btn-lg">Get Started</a>
        </div>
    </section>

    <!-- Key Features -->
    <div class="container mt-5">
        <h2 class="text-center mb-4">Why Choose Our System? 🌊</h2>
        <div class="row text-center">
            <div class="col-md-4 feature-card">
                <i class="fas fa-heartbeat feature-icon"></i>
                <h4>Real-Time Access</h4>
                <p>Retrieve critical patient history instantly in emergencies.</p>
            </div>
            <div class="col-md-4 feature-card">
                <i class="fas fa-lock feature-icon"></i>
                <h4>Secure & Private</h4>
                <p>Only authorized personnel can access sensitive data.</p>
            </div>
            <div class="col-md-4 feature-card">
                <i class="fas fa-bell feature-icon"></i>
                <h4>Emergency Alerts 🚨</h4>
                <p>Automated alerts to emergency contacts in critical situations.</p>
            </div>
        </div>
    </div>

    <!-- Emergency Section -->
    <section class="emergency-section mt-5">
        <h2>Emergency Situations? We’ve Got You Covered! ⚠️</h2>
        <p>In accidents and medical emergencies, every second counts. Our system ensures immediate access to life-saving information.</p>
        <a href="Emergency.jsp" class="btn btn-light">Learn More</a>
    </section>

    <!-- Footer -->
    <footer>
        <p>&copy; 2025 Emergency Medical Records | Designed for Faster Healthcare</p>
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>