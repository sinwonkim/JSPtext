package ch10;
import java.util.*; 
import java.sql.*;
import ch10.RegisterBean;  //�ڹٺ���

public class RegisterMgr {

		private Connection con;  // Ư�� �����ͺ��̽����� ������ �� �ְ� �� 
		private ResultSet rs;	// SQL���� ������ �ۼ��� ����� ������
		

		
		public RegisterMgr() {
			try {
				String JDBC_DRIVER = "com.mysql.jdbc.Driver";
				String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
				String USER = "root";
				String PASS = "1234";
				Class.forName(JDBC_DRIVER); // JDBC_Driver �ε�
				DriverManager.getConnection(JDBC_URL, USER, PASS);
			}catch(Exception e) {
				System.out.println("Error : JDBC ����̹� �ε� ����");
			}
		}
		
		public ArrayList<RegisterBean> getMemberList() {
			String SQL = "SELECT * FROM tblRegister";
			ArrayList<RegisterBean> list = new ArrayList<>();
			try {
				PreparedStatement psmt = con.prepareStatement(SQL);
				rs = psmt.executeQuery();
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
					list.add(regBean); // while���� �Ź� �ݺ��� ������ �ϳ��� ���ڵ忡 ���Ե� Į������ �ϳ��� �� ������ �� �� ���� ���Ϳ� �ϳ��� ��Ե� 
										  // while�� ������ ������ while���� ���ڵ尡 �ִ� ���� �ݺ��Ǳ� ������ ���ʹ� �ϳ��� ���ڵ忡 ���Ե�
				}
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			return list;
		}	
}
