package ch10;

import java.sql.*;
public class DriverTest {

	//JDBC를 통한 MySQL과 연동 테스트 
	public static void main(String[] args) {
		Connection con; // Connection 특정 데이터베이스와 연결함 
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BBS", "root", "1234");
			System.out.println("Success");
		}
		catch(SQLException ex) {System.out.println("SQLException"+ex);}
		catch(Exception ex) {System.out.println("Exception:"+ex);}
	}

}
