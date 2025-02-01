package com.health;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class test {
	public static void main(String[] args) {
		
//		if(request.getMethod().equalsIgnoreCase("POST"))
//		{
//			String pName = request.getParameter("pName");
//			String pBloodGroup = request.getParameter("pBloodGroup");
//			String pEmergencyContact = request.getParameter("pEmergencyContact");
//			try {
//				Class.forName("com.mysql.cj.jdbc.Driver");
//				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health","root","root@dk");
//				PreparedStatement pstmt = con.prepareStatement("select * from patients where pName like ? or pBloodGroup like ? or pEmergencyContact like ?");
//				pstmt.setString(1,"%"+ pName +"%");
//				ResultSet res = pstmt.executeQuery();
//				while(res.next()) {
//					int pId = res.getInt("pId");
//					String name = res.getString("pName");
//					String pGender = res.getString("pGender");
//					String BloodGroup = res.getString("pBloodGroup");
//					String pMedicalConditions = res.getString("pMedicalConditions");
//					String pSurgeries = res.getString("pSurgeries");
//					String EmergencyContact = res.getString("pEmergencyContact");
//					String pContactRelation = res.getString("pContactRelation");
//					String pEmail = res.getString("pEmail");
//					String pEmailRelation = res.getString("pEmailRelation");
//					String registeredHospitalName = res.getString("registeredHospitalName");
//					
//				}
//			
//			} catch (ClassNotFoundException | SQLException e) {
//				e.printStackTrace();
//			}
//		}
		
//	if(request.getMethod().equalsIgnoreCase("POST")){
//		String pName = request.getParameter("pName");
//		String pAge = request.getParameter("pAge");
//		String pGender = request.getParameter("pGender");
//		String pBloodGroup = request.getParameter("pBloodGroup");
//		String pMedicalConditions = request.getParameter("pMedicalConditions");
//		String pSurgeries = request.getParameter("pSurgeries");
//		String pEmergencyContact = request.getParameter("pEmergencyContact");
//		String pContactRelation = request.getParameter("pContactRelation");
//		String pEmail = request.getParameter("pEmail");
//		String pEmailRelation = request.getParameter("pEmailRelation");
//		String registeredHospitalName = request.getParameter("registeredHospitalName");
//		
//		
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/patients","root","root@dk");
//			PreparedStatement pstmt = con.prepareStatement("insert into patients(pName,pAge,pGender,pBloodGroup,pMedicalConditions,pSurgeries,pEmergencyContact,pContactRelation,pEmail,pEmailRelation,registeredHospitalName) values (?,?,?,?,?,?,?,?,?,?,?)");
//			pstmt.setString(1, pName);
//			pstmt.setString(2, pAge);
//			pstmt.setString(3, pGender);
//			pstmt.setString(4, pBloodGroup);
//			pstmt.setString(5, pMedicalConditions);
//			pstmt.setString(6, pSurgeries);
//			pstmt.setString(7, pEmergencyContact);
//			pstmt.setString(8, pContactRelation);
//			pstmt.setString(9, pEmail);
//			pstmt.setString(10, pEmailRelation);
//			pstmt.setString(11, registeredHospitalName);
//			int x = pstmt.executeUpdate();
//			
//			if(x>0) {
//				out.println("patients details registered successfully");
//				try {
//					Thread.sleep(3000);
//					response.sendRedirect("Home.jsp");
//				}catch(Exception e) {
//					e.printStackTrace();
//				}
//			}
//		
//		} catch (ClassNotFoundException | SQLException e) {
//			e.printStackTrace();
//		}
//	}
		
		
		
//		if(request.getMethod().equalsIgnoreCase("POST"))
//		{
//			String uEmail = request.getParameter("uEmail");
//			String uPasswd = request.getParameter("uPasswd");
//			boolean isValid = false;
//			try {
//				Class.forName("com.mysql.cj.jdbc.Driver");
//				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/health","root","root@dk");
//				PreparedStatement pstmt = con.prepareStatement("select * from uEmail =? and uPasswd = ?");
//				pstmt.setString(1, uEmail);
//				pstmt.setString(2, uPasswd);
//				ResultSet res = pstmt.executeQuery();
//				isValid = res.next();
//				
//			} catch (ClassNotFoundException | SQLException e) {
//				e.printStackTrace();
//			}	
//			
//			if(isValid) {
//				response.sendRedirect("Home.jsp");
//			}else {
//				response.sendRedirect("signup.jsp");
//			}
//		}
//		
//		
		
//		if(request.getMethod().equalsIgnoreCase("POST"))
//		{
//			String medicalConditions = request.getParameter("medicalConditions");
//			try {
//				Class.forName("com.mysql.cj.jdbc.Driver");
//				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/data","root","root@dk");
//				PreparedStatement pstmt = con.prepareStatement("select * from data where medicalCondition like ?");
//				pstmt.setString(1,"%"+medicalCondition+"%");
//				ResultSet res = pstmt.executeQuery();
//				while(res.next()) {
//					String dMedicalConditions = res.getString("dMedicalConditions");
//					String dTreatments = res.getString("dTreatments");
//					String dBloodGroup = res.getString("dBloodGroup");
//				}
//				
//			} catch (ClassNotFoundException | SQLException e) {
//				e.printStackTrace();
//			}
//			
//		}
//		
	}
}
