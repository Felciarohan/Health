<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	body {
        font-family: Arial, sans-serif;
        background-color: rgb(7, 139, 7); /* Lighter green background for a medical feel */
        margin: 0;
        padding: 0;
    }

    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 90vh;
        padding: 20px;
        box-sizing: border-box;
    }

    .image-container {
        flex: 1;
        background: url('https://www.shutterstock.com/shutterstock/videos/1099160657/thumb/11.jpg?ip=x480') no-repeat center center;
        background-size: cover;
        border-radius: 8px;
        height: 100%;
		background-size: 600px;
    }

    .form-container {
        flex: 1;
        background-color: rgb(7, 139, 7);
        padding: 70px;
   
		height:320px;
		width: 300px;
    }

    .form-container h1 {
        text-align: center;
        color: black;
        font-size: 36px;
        margin-bottom: 30px;
    }

    table {
        width: 100%;
        margin: 0 auto;
    }

    td {
        padding: 5px;
        font-size: 16px;
    }

    input[type="text"], input[type="email"], input[type="password"], input[type="name"] {
        width: 100%;
        padding: 6px;
        font-size: 16px;
        border: 2px solid #28a745;
        border-radius: 4px;
        background-color: #f1f9f3;
        color: #333;
    }

    input[type="submit"] {
        background-color: #28a745;
        color: #fff;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #218838;
    }

    td:first-child {
        text-align: right;
    }

    td input {
        margin-left: 10px;
    }

    @media screen and (max-width: 768px) {
        .container {
            flex-direction: column;
            padding: 10px;
        }

        .image-container {
            display: none;
        }

        .form-container {
            width: 100%;
            padding: 20px;
        }
    }
</style>
<body>
<form method = "post">
	<table>
		<tr>
			<td>Enter the Email</td>
			<td><input type="email" name="uEmail"></td>
		</tr>
		<tr>
			<td>Enter the Password</td>
			<td><input type="password" name="uPasswd"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" name="sumbit"></td>
		</tr>
	</table>
</form>
	<%
	if(request.getMethod().equalsIgnoreCase("POST"))
	{
		String uEmail = request.getParameter("uEmail");
		String uPasswd = request.getParameter("uPasswd");
		boolean isValid = false;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health","root","root@dk");
			PreparedStatement pstmt = con.prepareStatement("select * from user where uEmail =? and uPasswd = ?");
			pstmt.setString(1, uEmail);
			pstmt.setString(2, uPasswd);
			ResultSet res = pstmt.executeQuery();
			isValid = res.next();
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		
		if(isValid) {
			response.sendRedirect("Home.jsp");
		}else {
			response.sendRedirect("signup.jsp");
		}
	}
	
	
	%>
</body>
</html>