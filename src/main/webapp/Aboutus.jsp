<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us</title>
    <style>
       body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
            color: #333;
            background-image: url('https://img.freepik.com/free-vector/national-doctor-s-day-hand-drawn-background_23-2149438165.jpg');
        }

       
        .container {
            width: 80%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            opacity: 0;
            animation: fadeIn 1s forwards;
        }

        
        h1 {
            text-align: center;
            color: #28a745; /* Green theme */
            font-size: 36px;
            animation: slideInFromLeft 1s ease-out;
        }

        h2 {
            color: #6c757d; 
            font-size: 24px;
            margin-top: 30px;
            border-bottom: 2px solid #28a745; 
            padding-bottom: 5px;
            opacity: 0;
            animation: fadeIn 1s 0.5s forwards;
        }

       
        p {
            font-size: 16px;
            line-height: 1.6;
            color: #555;
            opacity: 0;
            animation: fadeIn 1s 1s forwards;
        }

        
        .feature-list {
            list-style-type: none;
            padding-left: 0;
            opacity: 0;
            animation: fadeIn 1s 1.5s forwards;
        }

        .feature-list li {
            background-color: #f7f7f7;
            margin: 10px 0;
            padding: 10px;
            border-left: 5px solid #28a745;
            transition: transform 0.3s ease-in-out;
        }

        .feature-list li:hover {
            transform: translateX(10px);
        }

        .feature-list li strong {
            color: #28a745; 
        }

        .contact a {
            color: #28a745;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .contact a:hover {
            color: #dc3545; 
            text-decoration: underline;
        }

      
        @media (max-width: 768px) {
            .container {
                width: 95%;
                padding: 10px;
            }

            h1 {
                font-size: 28px;
            }

            h2 {
                font-size: 20px;
            }

            p {
                font-size: 14px;
            }
        }

        
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideInFromLeft {
            from {
                transform: translateX(-50%);
                opacity: 0;
            }
            to {
                transform: translateX(0);
                opacity: 1;
            }
        }
  
    </style>
</head>
<body>

<div class="container">
    <h1>About Us</h1>
    
    <section>
        <h2>Introduction</h2>
        <p>Our system is designed to provide a centralized platform for storing and retrieving medical data in emergency situations. It aims to improve the speed and accuracy of medical care during emergencies, particularly when patients are unconscious or unable to communicate vital information. By enabling healthcare providers to access patients' medical history, allergies, and ongoing treatments instantly, we strive to save lives and enhance the quality of emergency care.</p>
    </section>

    <section>
        <h2>Our Mission</h2>
        <p>We are dedicated to revolutionizing the way medical data is shared in emergency situations. Our mission is to ensure that healthcare providers have immediate access to the most accurate and up-to-date patient information, enabling them to provide timely and appropriate care that can save lives.</p>
    </section>

    <section>
        <h2>Our Vision</h2>
        <p>We envision a world where medical emergencies are met with faster, more accurate decision-making, facilitated by real-time access to comprehensive patient data. By empowering medical professionals with this information, we aim to improve patient outcomes, reduce the risk of complications, and ensure that every individual receives the care they need in critical moments.</p>
    </section>

    <section>
        <h2>Features</h2>
        <ul class="feature-list">
            <li><strong>Real-Time Data Access:</strong> Immediate access to patient medical history, allergies, and medications during emergencies.</li>
            <li><strong>Emergency Contact Notifications:</strong> Quick notifications sent to emergency contacts to inform them of the situation.</li>
            <li><strong>Secure Data Handling:</strong> Only authorized personnel can access sensitive patient data, ensuring privacy and security.</li>
            <li><strong>Dynamic Data Updates:</strong> Healthcare professionals can update and modify patient records in real-time to keep data accurate.</li>
            <li><strong>Search and Filtering:</strong> Easily search for patients using identifiers like name, ID, or blood group to find the necessary information quickly.</li>
        </ul>
    </section>

    

    <section>
        <h2>Contact Us</h2>
        <p>If you have any questions or need further information, feel free to contact us:</p>
        <p>Email: <a href="mailto:info@healthsystem.com">info@healthsystem.com</a></p>
        <p>Phone: +91 98079 XXXXX</p>
    </section>

</div>

</body>
</html>
