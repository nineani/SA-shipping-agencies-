package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn;

	private ResultSet rs;
//������ �۾��� �׼��� ���ִ� jsp	
	public BbsDAO() {
		
		try {
			 String url = "jdbc:oracle:thin:@localhost:1521:xe";
			 String id = "scott";
			 String pw = "tiger";
		     String driver = "oracle.jdbc.OracleDriver";
		     Class.forName(driver);
		     conn = DriverManager.getConnection(url, id, pw);
			
		}catch (Exception e) {
			e.printStackTrace();//�����߻��� ������������ Ȯ��
		}
	}
	
	//������ �ð��� �Է��ϴ� �Լ�
	public String getRegister_day() {
		String SQL = "SELECT TO_CHAR(SYSDATE, 'RRRR-MM-DD hh24:mi:ss') FROM DUAL";  
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery(); //������ ����������� �� ��������
			if (rs.next()) {
				return rs.getString(1); //�ִ°�� ������ ��¥�� ��ȯ
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //�����ͺ��̽� ����
	}
	
	public int getNext() {
		String SQL = "SELECT b_num FROM NOTICE ORDER BY b_num DESC";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery(); //������ ����������� �� ��������
			if (rs.next()) {
				return rs.getInt(1) + 1; //�ִ°�� ������ ��¥�� ��ȯ
			}
			return 1; // ù��°�Խù��� ���
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	public int write(String id, String subject, String content) {
		//System.out.println("bbsTitle : " + bbsTitle);
		String SQL = "INSERT INTO NOTICE VALUES (NOTICE_SEQ.nextval, ?, ?, ?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			//pstmt.setInt(1, getNext());
			pstmt.setString(1, id);
			pstmt.setString(2, subject);
			pstmt.setString(3, content);
			pstmt.setString(4, getRegister_day());
			pstmt.setInt(5, 1);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
	
	public ArrayList<Bbs> getList(int pageNumber) {
		String SQL = "SELECT * FROM (SELECT * FROM NOTICE WHERE b_num < ? AND available = 1 ORDER BY b_num DESC) WHERE ROWNUM <= 10";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
			rs = pstmt.executeQuery(); //������ ����������� �� ��������
			while (rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setB_num(rs.getInt(1));
				bbs.setId(rs.getString(2));
				bbs.setSubject(rs.getString(3));
				bbs.setContent(rs.getString(4));
				bbs.setRegister_day(rs.getString(5));
				//bbs.setHit(rs.getString(5));
				bbs.setAvailable(rs.getInt(6));
				list.add(bbs);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return list; //����Ʈ���
	}
	 //����¡ó���� ���� �Լ�
	public boolean nextPage(int pageNumber) {
		String SQL = "SELECT * FROM NOTICE WHERE b_num <? AND Available = 1";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
			rs = pstmt.executeQuery(); //������ ����������� �� ��������
			if(rs.next()) {
				return true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return false; //����Ʈ���
	}
	// �ϳ��� �۳����� �ҷ����� �Լ�
	public Bbs getBbs(int b_num) {
		String SQL = "SELECT * FROM NOTICE WHERE b_num = ?";
		ArrayList<Bbs> list = new ArrayList<Bbs>();
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, b_num);
			rs = pstmt.executeQuery(); //������ ����������� �� ��������
			if(rs.next()) {
				Bbs bbs = new Bbs();
				bbs.setB_num(rs.getInt(1));
				bbs.setId(rs.getString(2));
				bbs.setSubject(rs.getString(3));
				bbs.setContent(rs.getString(4));
				bbs.setRegister_day(rs.getString(5));
				bbs.setAvailable(rs.getInt(6));
				return bbs;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null; //����Ʈ���
		
	}
	
	public int update(int b_num, String id, String manager, String subject, 	
						String content, String available) {

			String SQL = "UPDATE NOTICE SET subject = ?, content = ? WHERE b_num = ?"; //Ư���� id�� ���� ����� ������ �ٲ��ְڴٴ� ����
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				//pstmt.setInt(1, getNext());
				pstmt.setString(1, subject);
				pstmt.setString(2, content);
				pstmt.setInt(3, b_num);
				return pstmt.executeUpdate();
			}catch (Exception e) {
					e.printStackTrace();
			}
			return -1; //�����ͺ��̽� ����
	}
	
	public int delete(int b_num) {
		String SQL = "UPDATE NOTICE SET Available = 0 WHERE b_num = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, b_num);
			return pstmt.executeUpdate();
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //�����ͺ��̽� ����
	}
}