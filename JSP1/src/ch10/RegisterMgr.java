package ch10;
import java.util.*; 
import java.sql.*;
import ch10.RegisterBean;  //자바빈즈

public class RegisterMgr {

		private Connection con;  // 특정 데이터베이스와의 연결할 수 있게 됨 
		private ResultSet rs;	// SQL문을 실행해 작성된 결과를 돌려줌
		

		
		public RegisterMgr() {
			try {
				String JDBC_DRIVER = "com.mysql.jdbc.Driver";
				String JDBC_URL = "jdbc:mysql://localhost:3306/mydb";
				String USER = "root";
				String PASS = "1234";
				Class.forName(JDBC_DRIVER); // JDBC_Driver 로딩
				DriverManager.getConnection(JDBC_URL, USER, PASS);
			}catch(Exception e) {
				System.out.println("Error : JDBC 드라이버 로딩 실패");
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
					list.add(regBean); // while문이 매번 반복될 떄마다 하나의 레코드에 포함된 칼럼들은 하나의 빈에 세팅이 됨 이 빈을 벡터에 하나씩 담게됨 
										  // while문 수행이 끝나면 while문은 레코드가 있는 동안 반복되기 때문에 백터는 하나의 레코드에 포함된
				}
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			return list;
		}	
}
