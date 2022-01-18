package dto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import bbs.Bbs;

public class FaqDAO {
	
	private Connection conn;
	private ResultSet rs;
	
	public FaqDAO() {
		try {
			 String url = "jdbc:oracle:thin:@localhost:1521:xe";
			 String id = "scott";
			 String pw = "tiger";
		     String driver = "oracle.jdbc.OracleDriver";
		     Class.forName(driver);
		     conn = DriverManager.getConnection(url, id, pw);
		     }
		catch (Exception e) {e.printStackTrace();}
		}
	
	public int getNext() {
		String sql = "SELECT f_num FROM FAQ ORDER BY f_num DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		}
		catch (Exception e) {e.printStackTrace();}
		return -1;
	}
	
	public ArrayList<Faq> loadFAQ(int pageNumber) {
		String sql = "SELECT * FROM (SELECT * FROM FAQ WHERE f_num < ? ORDER BY f_num DESC) WHERE ROWNUM <= 10";
		ArrayList<Faq> faqList = new ArrayList<Faq>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Faq faq = new Faq();
				faq.setF_num(rs.getInt("f_num"));
				faq.setF_title(rs.getString("f_title"));
				faq.setF_content(rs.getString("f_content"));
				faq.setF_category(rs.getString("f_category"));
				faqList.add(faq);
				}
			}
		catch (Exception e) {e.printStackTrace();}
		return faqList;
		}
	
	public boolean nextPage(int pageNumber) {
		String sql = "SELECT * FROM FAQ WHERE f_num < ?";
		ArrayList<Faq> faqList = new ArrayList<Faq>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return true;
			}
		}
		catch (Exception e) {e.printStackTrace();}
		return false;
	}
	
}
