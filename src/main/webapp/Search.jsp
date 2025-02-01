<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Search Patients</title>
</head>
<style>
 
    body {
        background: linear-gradient(to right, #1c9c3a, #6eedc7);
        font-family: 'Arial', sans-serif;
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 90vh;
      background-image: url('https://img.freepik.com/free-photo/abstract-gradient-neon-lights_23-2149279180.jpg?semt=ais_hybrid');
      background-size: 100% 110%;
        text-align: center;
    }

    form {
        background: rgba(255, 255, 255, 0.1);
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.3);
        backdrop-filter: blur(10px);
    }

    h2 {
        margin-bottom: 20px;
        font-size: 24px;
    }

 
    input[type="text"] {
        width: 290px;
        height:30px;
        padding: 10px;
        border-radius: 5px;
        border: none;
        background: rgba(255, 255, 255, 0.3);
        transition: 0.3s;
        color: black;
    }

    input[type="text"]:focus {
        background: rgba(255, 255, 255, 0.6);
        outline: none;
        box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.5);
    }
</style>
</head>
<body>

<form method="post">
    <h2>🔎 Search Patients</h2>
    <table>
        <tr>
            <td><input type="text" name="pId" placeholder="Enter Patient ID"></td>
        </tr>
    </table>
</form>


    <%
    if(request.getMethod().equalsIgnoreCase("POST")) {
        String pId = request.getParameter("pId");
      

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health", "root", "root@dk");
            
            // Modify query to search by pId along with other fields
            String query = "SELECT * FROM patients WHERE pId = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1,  pId );
           

            ResultSet res = pstmt.executeQuery();

            if(res.isBeforeFirst()) { // Check if results exist
    %>
                <table border="1">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Gender</th>
                        <th>Blood Group</th>
                        <th>Medical Conditions</th>
                        <th>Surgeries</th>
                        <th>Emergency Contact</th>
                        <th>Contact Relation</th>
                        <th>Email</th>
                        <th>Email Relation</th>
                        <th>Hospital Name</th>
                    </tr>
    <%
                while(res.next()) {
    %>
                    <tr>
                        <td><%= res.getInt("pId") %></td>
                        <td><%= res.getString("pName") %></td>
                        <td><%= res.getString("pGender") %></td>
                        <td><%= res.getString("pBloodGroup") %></td>
                        <td><%= res.getString("pMedicalConditions") %></td>
                        <td><%= res.getString("pSurgeries") %></td>
                        <td><%= res.getString("pEmergencyContact") %></td>
                        <td><%= res.getString("pContactRelation") %></td>
                        <td><%= res.getString("pEmail") %></td>
                        <td><%= res.getString("pEmailRelation") %></td>
                        <td><%= res.getString("registeredHospitalName") %></td>
                    </tr>
    <%
                }
    %>
                </table>
    <%
            } else {
    %>
                <p>No matching records found.</p>
    <%
            }
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    %>

</body>
</html>
