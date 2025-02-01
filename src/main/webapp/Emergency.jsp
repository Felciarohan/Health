<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <style>
         body {
            background: url('https://t3.ftcdn.net/jpg/02/94/43/12/360_F_294431234_Y0f2i95uU4d0CfsejxbK7foZ9fdlGvRf.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
        }
        .container {
            margin-top: 80px;
        }
        .form-container, .table-container {
            background: rgba(255, 255, 255, 0.2); 
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }
        h2, h4 {
            color: #28a745;
            text-align: center;
        }
        .form-control {
            border-radius: 20px;
            border: 2px solid #28a745;
            font-size: 1.1rem;
        }
        .form-control:focus {
            border-color: #218838;
            box-shadow: none;
        }
        .btn-primary {
            background-color: #28a745;
            border-radius: 20px;
            padding: 10px 20px;
            font-size: 1.1rem;
            border: none;
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #218838;
        }
        .table {
            margin-top: 20px;
            background: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
        }
        .table th {
            background-color: #28a745;
            color: white;
            text-align: center;
        }
        .table td {
            text-align: center;
        }
        @media (max-width: 992px) {
            .row {
                flex-direction: column;
            }
            .form-container, .table-container {
                margin-bottom: 30px;
            }
        }
    </style>
<head>
    <meta charset="UTF-8">
    <title>Emergency Contact</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
    <div class="container mt-5">
        <h2 class="text-center">Add Emergency Contact and Send Alert</h2>
        
        <!-- Emergency Contact Form -->
        <form action="Emergency.jsp" method="post" class="mb-4">
            <div class="mb-3">
                <label for="email" class="form-label">Enter Email to Send Alert</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter Email" required>
            </div>
            <div class="mb-3">
                <label for="contactName" class="form-label">Emergency Contact Name</label>
                <input type="text" class="form-control" id="contactName" name="contactName" required>
            </div>
            <div class="mb-3">
                <label for="contactPhone" class="form-label">Emergency Contact Phone</label>
                <input type="text" class="form-control" id="contactPhone" name="contactPhone" required>
            </div>
            <div class="mb-3">
                <label for="relationship" class="form-label">Relationship</label>
                <input type="text" class="form-control" id="relationship" name="relationship" required>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
        <%
            String email = request.getParameter("email");
            String contactName = request.getParameter("contactName");
            String contactPhone = request.getParameter("contactPhone");
            String relationship = request.getParameter("relationship");

            // Simulate sending an email
            if (email != null && contactName != null && contactPhone != null && relationship != null) {
                try {
                    // Simulate sending an email (no actual email sending in this case)
                    boolean isEmailSent = false; // Simulate a failure or success
                    if (email.contains("@")) {
                        isEmailSent = true; // Simulate success if the email contains "@" symbol
                    }

                    // Display success or failure message
                    if (isEmailSent) {
                        out.println("<div class='alert alert-success text-center'>Email sent successfully!</div>");
                    } else {
                        out.println("<div class='alert alert-danger text-center'>Failed to send email. Please check the email address.</div>");
                    }

                    // Display the emergency contact details
                    out.println("<h4 class='text-center'>Emergency Contact Added:</h4>");
                    out.println("<p>Name: " + contactName + "</p>");
                    out.println("<p>Phone: " + contactPhone + "</p>");
                    out.println("<p>Relationship: " + relationship + "</p>");
                } catch (Exception e) {
                    out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
                }
            }
        %>

        <hr>
        <h4 class="text-center">Government Emergency Contacts</h4>
        <table class="table">
            <thead>
                <tr>
                    <th>Service</th>
                    <th>Contact</th>
                    <th>Details</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Health care Services</td>
                    <td>+1-800-123-4567</td>
                    <td>For general health-related emergencies. Available 24/7.</td>
                </tr>
                <tr>
                    <td>Police Emergency</td>
                    <td>+1-911</td>
                    <td>For immediate police assistance in case of an emergency.</td>
                </tr>
                <tr>
                    <td>Fire Emergency</td>
                    <td>+1-911</td>
                    <td>For immediate fire-related emergencies.</td>
                </tr>
                <tr>
                    <td>Poison Control</td>
                    <td>+1-800-222-1222</td>
                    <td>For poisoning emergencies and related inquiries.</td>
                </tr>
                <tr>
                    <td>Ambulance Services</td>
                    <td>+1-911</td>
                    <td>For immediate ambulance services in medical emergencies.</td>
                </tr>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
