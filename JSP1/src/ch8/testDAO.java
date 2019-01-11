package ch8;
import java.util.*;
import java.sql.*;
import java.util.ArrayList;

public class testDAO {

	private final String DRIVER ="com.mysql.jdbc.Driver";
	private final String URL = "jdbc:mysql://localhost:3306/mydb";
	private final String USER ="root";
	private final String PASS ="1234";
	
	public testDAO( ) {
		try {
			Class.forName(DRIVER);			
		}catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}


public ArrayList<testTable> getTestTable(){
	Connection conn = null; // 특정데이터베이스와의 연결을 말함
	Statement stmt = null;  //SQL문을 실행해 작성된 결과를 돌려줌
	ResultSet rs  = null; // SQL문에 대한 결과를 얻어냄
	
	ArrayList<testTable> list = new ArrayList<>();
	try {
		conn = DriverManager.getConnection(URL, USER, PASS);
		String SQL = "select * from testTable";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(SQL);
		while(rs.next()) {
			testTable tTable = new testTable();
			tTable.setTestId(rs.getString("testID"));
			tTable.setTestPw(rs.getString("testPw"));
			list.add(tTable);
		}	
	}catch (Exception e) {
		System.out.println("Exception" + e);
	}
	return list;
	}
}