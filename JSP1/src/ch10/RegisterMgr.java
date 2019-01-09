package ch10;
import java.util.*; 
import java.sql.*;
import ch10.RegisterBean;  //자바빈즈

public class RegisterMgr {

		private final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
		private final String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
		private final String USER = "root";
		private final String PASS = "1234";
		
		public RegisterMgr() {
			try {
				Class.forName(JDBC_DRIVER); // JDBC_Driver 로딩
			}catch(Exception e) {
				System.out.println("Error : JDBC 드라이버 로딩 실패");
			}
		}
		
		public Vector getMemberList() {
			Connection conn = null; // 특정 데이터베이스와의 연결할 수 있게 됨  
			Statement stmt = null;  // SQL문을 실행해 작성된 결과를 돌려줌
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
					vecList.add(regBean); // while문이 매번 반복될 떄마다 하나의 레코드에 포함된 칼럼들은 하나의 빈에 세팅이 됨 이 빈을 벡터에 하나씩 담게됨 
										  // while문 수행이 끝나면 while문은 레코드가 있는 동안 반복되기 때문에 백터는 하나의 레코드에 포함된
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
