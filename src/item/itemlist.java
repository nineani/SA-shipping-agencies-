package item;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import item.Item;

public class itemlist {
	
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pstmt;
	
	public itemlist() {
			try {
				String url = "jdbc:oracle:thin:@localhost:1521:xe";
				String item="scott";
				String password="tiger";
				
				Class.forName("oracle.jdbc.driver.OracleDriver");
				conn = DriverManager.getConnection(url, item, password);
				
			} catch (Exception e) {
				e.printStackTrace();//�����߻��� ������������ Ȯ��
			}
	}
	
	public int getNext() {
		String SQL = "SELECT PAGE_NUM FROM APPLICATION_FORM ORDER BY PAGE_NUM DESC";
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
	
		//ȸ�� ����Ʈ �޼ҵ�
		public ArrayList<Item> getList(int pageNumber){
			String sql = "SELECT * FROM (SELECT * FROM APPLICATION_FORM WHERE PAGE_NUM < ? ORDER BY PAGE_NUM DESC) WHERE ROWNUM <= 10";
			ArrayList<Item> list = new ArrayList<Item>();
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
				rs = pstmt.executeQuery();
				while(rs.next()) {
					Item item = new Item();
					item.setP_id(rs.getString(1));
					item.setP_num(rs.getInt(2));
					item.setP_name(rs.getString(3));
					item.setP_date(rs.getString(15));
					item.setP_country(rs.getString(16));
					list.add(item);
				}
			}catch (Exception e) {
				e.printStackTrace();
	        }
			return list;
		}
		 //����¡ó���� ���� �Լ�
		public boolean nextPage(int pageNumber) {
			String SQL = "SELECT * FROM APPLICATION_FORM WHERE PAGE_NUM <?";
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
		public Item getitem(int num) {
			String SQL = "SELECT * FROM APPLICATION_FORM WHERE P_NUM = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, num);
				rs = pstmt.executeQuery(); //������ ����������� �� ��������
				if(rs.next()) {
					Item item = new Item();
					item.setP_id(rs.getString(1));
					item.setP_num(rs.getInt(2));
					item.setP_name(rs.getString(3));
					item.setS_url(rs.getString(4));
					item.setP_img(rs.getString(5));
					item.setP_category(rs.getString(6));
					item.setP_item(rs.getString(7));
					item.setP_brand(rs.getString(8));
					item.setP_count(rs.getInt(9));
					item.setP_price(rs.getInt(10));
					item.setP_color(rs.getString(11));
					item.setP_size(rs.getString(12));
					item.setP_url(rs.getString(13));
					item.setP_pay(rs.getString(14));
					item.setP_date(rs.getString(15));
					item.setP_country(rs.getString(16));
					return item;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return null; //����Ʈ���
		}
		
		//ȸ�� ����Ʈ �޼ҵ�
				public ArrayList<Item> getdelList(int pageNumber){
					String sql = "SELECT * FROM (SELECT * FROM APPLICATION_FORM WHERE PAGE_NUM < ? and cancle = 1 ORDER BY PAGE_NUM DESC) WHERE ROWNUM <= 10";
					ArrayList<Item> list = new ArrayList<Item>();
					try {
						pstmt = conn.prepareStatement(sql);
						pstmt.setInt(1, getNext() -  (pageNumber -1) * 10);
						rs = pstmt.executeQuery();
						while(rs.next()) {
							Item item = new Item();
							item.setP_id(rs.getString(1));
							item.setP_num(rs.getInt(2));
							item.setP_name(rs.getString(3));
							item.setP_date(rs.getString(15));
							item.setP_country(rs.getString(16));
							list.add(item);
						}
					}catch (Exception e) {
						e.printStackTrace();
			        }
					return list;
				}
		
		//����
		public int delete(int num) {
			String SQL = "delete from APPLICATION_FORM where p_num = ?";
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
