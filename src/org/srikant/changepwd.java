package org.srikant;
import java.sql.*;

import javax.servlet.http.HttpSession;
public class changepwd {
	public boolean change(String npwd,String s)
	{
		String JDBC_DRIVER="com.mysql.jdbc.Driver";  
	      String DB_URL="jdbc:mysql://localhost/login";
	      String USER = "root";
	      String PASS = "admin";
		try{
	         // Register JDBC driver
	         Class.forName(JDBC_DRIVER);

	         // Open a connection
	         Connection conn = DriverManager.getConnection(DB_URL,USER,PASS);

	         // Execute SQL query
	         Statement stmt = conn.createStatement();
	         String sql;
	         
	         
	         
			sql = "UPDATE users SET pwd='" + npwd + "' where user= '" + s + "'";
	         stmt.executeUpdate(sql);
	        
             
	         stmt.close();
	         conn.close();
	         return true;
	      }catch(SQLException se){
	         //Handle errors for JDBC
	         se.printStackTrace();
	      }catch(Exception e){
	         //Handle errors for Class.forName
	         e.printStackTrace();
	      }
		return true;
	}

	}

