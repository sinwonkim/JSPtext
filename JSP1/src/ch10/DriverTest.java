package ch10;

import java.sql.*;
public class DriverTest {

	//JDBC�� ���� MySQL�� ���� �׽�Ʈ 
	public static void main(String[] args) {
		Connection con; // Connection Ư�� �����ͺ��̽��� ������ 
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/BBS", "root", "1234");
			System.out.println("Success");
		}
		catch(SQLException ex) {System.out.println("SQLException"+ex);}
		catch(Exception ex) {System.out.println("Exception:"+ex);}
	}

}
