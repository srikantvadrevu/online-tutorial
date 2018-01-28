package org.srikant.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class loginservice {

	public boolean authenticate(String userid, String password) {
		String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		String DB_URL = "jdbc:mysql://localhost/login";
		String USER = "root";
		String PASS = "admin";
		try {

			Class.forName(JDBC_DRIVER);

			Connection conn = DriverManager.getConnection(DB_URL, USER, PASS);

			Statement stmt = conn.createStatement();
			String sql;
			sql = "SELECT * FROM users";
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {

				String user = rs.getString("user");
				String pwd = rs.getString("pwd");
				System.out.println(user + pwd);
				if (userid.equals(user) && pwd.equals(password))
					return true;

			}

			rs.close();
			stmt.close();
			conn.close();
			return false;
		} catch (SQLException se) {

			se.printStackTrace();
		} catch (Exception e) {

			e.printStackTrace();
		}
		return true;
	}
}
