package ch8;
import java.util.*;
import java.sql.*;
import java.util.ArrayList;

public class testDAO {


	
	private Connection conn ; // Ư�������ͺ��̽����� ������ ����
	private ResultSet rs  ; // SQL���� ���� ����� ��
	  //SQL���� ������ �ۼ��� ����� ������
	//DB�� �ڹٶ� ����
	public testDAO( ) {
		try {
			String DRIVER ="com.mysql.jdbc.Driver";
			String URL = "jdbc:mysql://localhost:3306/mydb";
			String USER ="root";
			String PASS ="1234";
			Class.forName(DRIVER);		//����̹� �ε�
			conn = DriverManager.getConnection(URL, USER, PASS); 
		}catch(Exception e) {
			System.out.println("Error : JDBC ����̹� �ε� ����");
		}
	}


	//������ DB�� �����ؼ�  ����Ʈ �����  �ű⿡ �÷� �ϳ��ϳ��� �ִ°� 
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