package ch8;
import java.util.*;
import java.sql.*;
import java.util.ArrayList;

public class testDAO {


	
	private Connection conn ; // 특정데이터베이스와의 연결을 말함
	private ResultSet rs  ; // SQL문에 대한 결과를 얻어냄
	  //SQL문을 실행해 작성된 결과를 돌려줌
	//DB랑 자바랑 연결
	public testDAO( ) {
		try {
			String DRIVER ="com.mysql.jdbc.Driver";
			String URL = "jdbc:mysql://localhost:3306/mydb";
			String USER ="root";
			String PASS ="1234";
			Class.forName(DRIVER);		//드라이버 로딩
			conn = DriverManager.getConnection(URL, USER, PASS); 
		}catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}


	//실제로 DB에 접근해서  리스트 만들고  거기에 컬럼 하나하나씩 넣는것 
public ArrayList<testTable> getTestTable(){
	ArrayList<testTable> list = new ArrayList<>();
	try {
		Statement stmt;
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