package member;

import java.sql.*;
import java.util.*;

import user.User;

public class memberlist {
	
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public memberlist() {
			try {
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String user="scott";
				String password="tiger";
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, user, password);
				
			} catch (Exception e) {
				e.printStackTrace();//오류발생시 무슨오류인지 확인
			}
	}
	
	public int getNext() {
		String SQL = "SELECT num FROM PERSONAL_INFORMATION ORDER BY num DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery(); //실제로 실행했을경우 값 가져오기
			if (rs.next()) {
				return rs.getInt(1) + 1; //있는경우 현재의 날짜를 반환
			}
			return 1; // 첫번째게시물인 경우
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //데이터베이스 오류
	}
	
		//회원 리스트 메소드
		public ArrayList<User> getList(int pageNumber){
			String sql = "SELECT * FROM (SELECT * FROM PERSONAL_INFORMATION WHERE num < ? ORDER BY num DESC) WHERE ROWNUM <= 10";
			ArrayList<User> list = new ArrayList<User>();
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					User user = new User();
					user.setId(rs.getString(1));
					user.setPassword(rs.getString(2));
					user.setName(rs.getString(3));
					user.setEname(rs.getString(4));
					user.setEmail(rs.getString(5));
					user.setAddress(rs.getString(6));
					user.setPhone(rs.getInt(7));
					user.setSms_check(rs.getString(8));
					user.setEmail_check(rs.getString(9));
					user.setGender(rs.getString(10));
					user.setBirth(rs.getInt(11));
					user.setNum(rs.getInt(12));
					list.add(user);
				}
			}catch (Exception e) {
				e.printStackTrace();
	        }
			return list;
		}
		 //페이징처리를 위한 함수
		public boolean nextPage(int pageNumber) {
			String SQL = "SELECT * FROM PERSONAL_INFORMATION WHERE num <?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
				rs = pstmt.executeQuery(); //실제로 실행했을경우 값 가져오기
				if(rs.next()) {
					return true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return false; //리스트출력
		}
		
		// 하나의 글내용을 불러오는 함수
		public User getUser(int num) {
			String SQL = "SELECT * FROM PERSONAL_INFORMATION WHERE num = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery(); //실제로 실행했을경우 값 가져오기
				if(rs.next()) {
					User user = new User();
					user.setId(rs.getString(1));
					user.setPassword(rs.getString(2));
					user.setName(rs.getString(3));
					user.setEname(rs.getString(4));
					user.setEmail(rs.getString(5));
					user.setAddress(rs.getString(6));
					user.setPhone(rs.getInt(7));
					user.setSms_check(rs.getString(8));
					user.setEmail_check(rs.getString(9));
					user.setGender(rs.getString(10));
					user.setBirth(rs.getInt(11));
					user.setNum(rs.getInt(12));
					return user;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return null; //리스트출력
			
		}
		
		public int update(String id, String name, String ename, String password, String email, String address, int phone, int birth, int num) {
			String SQL = "update PERSONAL_INFORMATION set id = ?, name = ?, ename = ?, password = ?, email = ?, address = ?, phone = ?, birth = ? where num = ?";
			try{
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, id);
				pstmt.setString(2, name);
				pstmt.setString(3, ename);
				pstmt.setString(4, password);
				pstmt.setString(5, email);
				pstmt.setString(6, address);
				pstmt.setInt(7, phone);
				pstmt.setInt(8, birth);
				pstmt.setInt(9, num);
				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
		
		public int delete(int num) {
			String SQL = "delete from PERSONAL_INFORMATION where num = ?";
			try{
				pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, num);
				return pstmt.executeUpdate();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return -1;
		}
	
}
