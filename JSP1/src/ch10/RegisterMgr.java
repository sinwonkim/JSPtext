package ch10;
import java.util.*; 
import java.sql.*;
import ch10.RegisterBean;  //�ڹٺ���

public class RegisterMgr {

		private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		private final String USER = "root";
		private final String PASS = "1234";
		
		public RegisterMgr() {
			try {
				Class.forName(JDBC_DRIVER); // JDBC_Driver �ε�
			}catch(Exception e) {
				System.out.println("Error : JDBC ����̹� �ε� ����");
			}
		}
		
		public Vector getMemberList() {
			Connection conn = null; // Ư�� �����ͺ��̽����� ������ �� �ְ� ��  
			Statement stmt = null;  // SQL���� ������ �ۼ��� ����� ������
			ResultSet rs = null;
			Vector vecList = new Vector();
			try {
				conn = DriverManager.getConnection(JDBC_URL, USER, PASS);
				String SQL = "SELECT * FROM tblRegister";
				stmt = conn.createStatement();
				rs = stmt.executeQuery(SQL);
				while(rs.next()) {
					RegisterBean regBean = new RegisterBean();
					regBean.setId(rs.getString("id"));
					regBean.setPasswd(rs.getString("passwd"));
					regBean.setName(rs.getString("name"));
					regBean.setNum1(rs.getString("num1"));
					regBean.setNum2(rs.getString("num2"));
					regBean.setEamil(rs.getString("email"));
					regBean.setPhone(rs.getString("phone"));
					regBean.setZipcode(rs.getString("zipcode"));
					regBean.setAddress(rs.getString("address"));
					regBean.setJob(rs.getString("job"));
					vecList.add(regBean); // while���� �Ź� �ݺ��� ������ �ϳ��� ���ڵ忡 ���Ե� Į������ �ϳ��� �� ������ �� �� ���� ���Ϳ� �ϳ��� ��Ե� 
										  // while�� ������ ������ while���� ���ڵ尡 �ִ� ���� �ݺ��Ǳ� ������ ���ʹ� �ϳ��� ���ڵ忡 ���Ե�
				}
			}catch(Exception e) {
				e.printStackTrace();
				
			}finally {
				if(rs!=null) try {rs.close();} catch(SQLException e) {}
				if(stmt!=null) try {stmt.close();}
				catch(SQLException e) {	}if(conn!=null) try {conn.close();}catch(SQLException e) {}
				}
				return vecList;
		}	
}
