<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <style>
         body {
            background: url('https://redresscompliance.com/wp-content/uploads/2024/05/AI-in-Emergency-Care.webp') no-repeat center center fixed; 
            background-size: cover;
            font-family: 'Arial', sans-serif;
        }
        .container {
            background: rgb(255,255,255,0.0); 
            border-radius: 10px;
            padding: 30px;
            max-width: 500px;
            margin-top: 100px;
        }
        h2 {
            font-size: 2.5rem;
            font-weight: bold;
            color: #34d75a;
        }
        .input-group input {
            border-radius: 20px;
            border: 2px solid #28a745;
        }
        .input-group button {
            border-radius: 20px;
            background-color: #28a745;
            color: white;
            font-size: 1.1rem;
            border: none;
        }
        .input-group button:hover {
            background-color: #218838;
        }
        .input-group input:focus {
            outline: none;
            border-color: #218838;
        }
    </style>
<head>
    <meta charset="UTF-8">
    <title>Medical Search</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Search Medical Conditions</h2>
        <form method="post" class="mb-3">
            <div class="input-group">
                <input type="search" name="dMedicalConditions" class="form-control" placeholder="Search medical condition" required>
                <button type="submit" class="btn btn-primary">Search</button>
            </div>
        </form>

        <%
        if(request.getMethod().equalsIgnoreCase("POST")) {
            String dMedicalConditions = request.getParameter("dMedicalConditions");

            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health", "root", "root@dk");
                PreparedStatement pstmt = con.prepareStatement("SELECT * FROM data WHERE dMedicalConditions LIKE ?");
                pstmt.setString(1, "%" + dMedicalConditions + "%");
                ResultSet res = pstmt.executeQuery();

                if (!res.isBeforeFirst()) { %>
                    <div class='alert alert-warning text-center'>No records found</div>
                <% } else { %>
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Medical Condition</th>
                                <th>Blood Group</th>
                                <th>Treatments</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                            while(res.next()) {
                                String medicalCondition = res.getString("dMedicalConditions");
                                String treatments = res.getString("dTreatments");
                                String bloodGroup = res.getString("dBloodGroup");
                            %>
                            <tr>
                                <td><%= medicalCondition %></td>
                                <td><%= bloodGroup %></td>
                                <td><%= treatments %></td>
                            </tr>
                            <% } %>
                        </tbody>
                    </table>
                <% }
                con.close();
            } catch (Exception e) {
                out.println("<div class='alert alert-danger text-center'>Error: " + e.getMessage() + "</div>");
            }
        }
        %>
    </div>
</body>
</html>
