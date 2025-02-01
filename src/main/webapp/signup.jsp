<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign in</title>
</head>
<style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: Arial, sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      background: #f0f4f8;
      background-color: black;
    }

    .container {
      display: flex;
      width: 700px;
      height: 450px;
      border-radius: 12px;
      overflow: hidden;
      box-shadow: 10px 10px 20px rgb(88, 185, 245) ;
    }

    .left {
      background: linear-gradient(135deg, #6b9feb, #136a8a);
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      color: #fff;
      padding: 30px;
    }

    .left h2 {
      font-size: 32px;
      margin-bottom: 20px;
    }

    .left p {
      font-size: 16px;
      margin-bottom: 20px;
      text-align: center;
    }

    .left button {
      padding: 12px 30px;
      font-size: 16px;
      color: #519ab5;
      background: #fff;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: all 0.3s;
    }

    .left button:hover {
      background: #ddd;
    }

    .right {
      flex: 1;
      background: #fff;
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 40px 30px;
    }

    .right h2 {
      font-size: 26px;
      color: #333;
      margin-bottom: 20px;
    }

    .right input {
      width: 100%;
      padding: 12px;
      margin-bottom: 20px;
      border: 1px solid #ddd;
      border-radius: 6px;
      font-size: 16px;
    }

    .right button {
      width: 100%;
      padding: 12px;
      font-size: 16px;
      color: #fff;
      background: rgb(88, 185, 245) ;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s;
    }

    .right button:hover {
      background: #2eabd9;
    }

    .error {
      color: red;
      font-size: 14px;
      margin-top: -15px;
      margin-bottom: 10px;
    }
    a{
      text-decoration: none;
      color: black;
    }
	</style>
<body>
	<form method="post">
		<table>
			<tr>
				<td>Enter the Name</td>
				<td><input type="name" name="uName"></td>
			</tr>
			<tr>
				<td>Enter the Email</td>
				<td><input type="email" name="uEmail"></td>
			</tr>
			<tr>
				<td>Enter the Password</td>
				<td><input type="password" name="uPasswd"></td>
			</tr>
			<tr>
				<td>Enter the Role</td>
				<td><input type="text" name="uRole"></td>
			</tr>
			<tr>
				<td>
				</td>
				<td><input type="submit" name="submit"></td>
			</tr>
		</table>
	</form>
	<%
	if(request.getMethod().equalsIgnoreCase("POST"))
		
	{
		String uName = request.getParameter("uName");
		String uEmail = request.getParameter("uEmail");
		String uPasswd = request.getParameter("uPasswd");
		String uRole = request.getParameter("uRole");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health","root","root@dk");
			PreparedStatement pstmt = con.prepareStatement("insert into user (uName,uEmail,uPasswd,uRole) values(?,?,?,?)");
			pstmt.setString(1, uName);
			pstmt.setString(2, uEmail);
			pstmt.setString(3, uPasswd);
			pstmt.setString(4, uRole);
			int x = pstmt.executeUpdate();
			
			if(x>0) {
				out.println("Registered Successfully");
				try{
					Thread.sleep(3000);
					response.sendRedirect("Home.jsp");
				}catch(Exception e){
					out.println("Failed");
				}
			}else {
				out.println("Invalid credentails");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}
	
	%>
</body>
</html>