package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

//데이터베이스접근약자
// 회원정보 불어오거나 넣을 때 사용
public class UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public UserDAO() {
		
		
		
		try {
			 String url = "jdbc:oracle:thin:@localhost:1521:xe";
			 String id = "scott";
			 String pw = "tiger";
		     String driver = "oracle.jdbc.OracleDriver";
		     Class.forName(driver);
		     conn = DriverManager.getConnection(url, id, pw);
			
		}catch (Exception e) {
			e.printStackTrace();//오류발생시 무슨오류인지 확인
		}
	}
	
	public int login(String id, String password) {
		String SQL = "SELECT password FROM PERSONAL_INFORMATION WHERE id = ?";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if(rs.getString(1).equals(password))
					return 1; //로그인성공
				else
					return 0; //비밀번호 불일치
			}
			return -1; //아이디가 없음
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류
	}
	//회원정보 삽입
	public int join(User user) {
		String SQL = "INSERT INTO PERSONAL_INFORMATION VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, MEMBER_SEQ.NEXTVAL)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPassword());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getEname());
			pstmt.setString(5, user.getEmail());
			pstmt.setString(6, user.getAddress());
			pstmt.setInt(7, user.getPhone());
			pstmt.setString(8, user.getSms_check());
			pstmt.setString(9, user.getEmail_check());
			pstmt.setString(10, user.getGender());
			pstmt.setInt(11, user.getBirth());
			
			return pstmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
	
}
