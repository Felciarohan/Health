<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Patient Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<style>
   
    body {
        background: linear-gradient(to right, #69ed87, #11ca92);
        font-family: 'Arial', sans-serif;
        color: white;
        background-image: url('https://i.pinimg.com/736x/88/cb/21/88cb21d0fa57c354f52615d46a821b41.jpg');
    }

   
    .form-container {
        max-width: 900px;
        background: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        backdrop-filter: blur(10px);
        margin: 50px auto;
    }

    
    .form-control {
        background: rgba(255, 255, 255, 0.3);
        border: none;
        color: black;
        transition: all 0.3s ease-in-out;
    }

   
  
    .form-row {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
    }

    .form-group {
        width: 48%;
    }

  
    .btn-submit {
        width: 100%;
        background: linear-gradient(to right, #218838, #17a589);
        border: none;
        padding: 12px;
        font-size: 18px;
        transition: 0.3s;
        color: white;
    }
    label{
        color:rgb(94, 92, 92);
    }
    .btn-submit:hover {
        background: linear-gradient(to right, #28a745, #20c997);
        transform: scale(1.05);
        box-shadow: 0px 0px 15px rgba(40, 167, 69, 0.8);
    }
    h2{
        color:rgb(61, 58, 58);
    }
   
    @media (max-width: 768px) {
        .form-group {
            width: 100%;
        }
    }
</style>
</head>
<body>

<div class="form-container">
    <h2 class="text-center">🩺 Patient Registration</h2>
    <form method="post">
        <div class="form-row">
            <div class="form-group">
                <label>👤 Name</label>
                <input type="text" name="pName" class="form-control" required>
            </div>
            <div class="form-group">
                <label>🎂 Age</label>
                <input type="number" name="pAge" class="form-control" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>⚤ Gender</label>
                <select name="pGender" class="form-control" required>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                </select>
            </div>
            <div class="form-group">
                <label>🩸 Blood Group</label>
                <input type="text" name="pBloodGroup" class="form-control" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>📝 Medical Conditions</label>
                <textarea name="pMedicalConditions" class="form-control" required></textarea>
            </div>
            <div class="form-group">
                <label>📞 Emergency Contact</label>
                <input type="tel" name="pEmergencyContact" class="form-control" pattern="[0-9]{10}" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>📧 Email</label>
                <input type="email" name="pEmail" class="form-control" required>
            </div>
            <div class="form-group">
                <label>🏥 Hospital Name</label>
                <input type="text" name="registeredHospitalName" class="form-control" required>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group">
                <label>📍 Place</label>
                <input type="text" name="place" class="form-control" required>
            </div>
            <div class="form-group">
                <label>📧 Guidance Email</label>
                <input type="email" name="pEmailRelation" class="form-control">
            </div>
        </div>

        <div class="text-center mt-4">
            <button type="submit" class="btn btn-submit">🚀 Submit</button>
        </div>
    </form>
</div>

        <% 
        if(request.getMethod().equalsIgnoreCase("POST")){
            String pName = request.getParameter("pName");
            int pAge = Integer.parseInt(request.getParameter("pAge"));
            String pGender = request.getParameter("pGender");
            String pBloodGroup = request.getParameter("pBloodGroup");
            String pMedicalConditions = request.getParameter("pMedicalConditions");
            String pSurgeries = request.getParameter("pSurgeries");
            String pEmergencyContact = request.getParameter("pEmergencyContact");
            String pContactRelation = request.getParameter("pContactRelation");
            String pEmail = request.getParameter("pEmail");
            String pEmailRelation = request.getParameter("pEmailRelation");
            String registeredHospitalName = request.getParameter("registeredHospitalName");
            String place = request.getParameter("place");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health", "root", "root@dk");
                     PreparedStatement pstmt = con.prepareStatement("INSERT INTO patients(pName, pAge, pGender, pBloodGroup, pMedicalConditions, pSurgeries, pEmergencyContact, pContactRelation, pEmail, pEmailRelation, registeredHospitalName, place) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)")) {
                    
                    pstmt.setString(1, pName);
                    pstmt.setInt(2, pAge);
                    pstmt.setString(3, pGender);
                    pstmt.setString(4, pBloodGroup);
                    pstmt.setString(5, pMedicalConditions);
                    pstmt.setString(6, pSurgeries);
                    pstmt.setString(7, pEmergencyContact);
                    pstmt.setString(8, pContactRelation);
                    pstmt.setString(9, pEmail);
                    pstmt.setString(10, pEmailRelation);
                    pstmt.setString(11, registeredHospitalName);
                    pstmt.setString(12, place);

                    int x = pstmt.executeUpdate();
                    if (x > 0) {
                        response.sendRedirect("Home.jsp");
                    } else {
                        out.println("<div class='alert alert-danger text-center'>Registration failed</div>");
                    }
                }
            } catch (Exception e) {
                out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
            }
        }
        %>
    </div>
</body>
</html>
