package inquiries;

import java.util.Date;

public class inquiries {
	private int qnum;
	private String qcategory;
	private String qcenter;
	private String qtitle;
	private String qcontent;
	private String qfile;
	private Date qdate;
	private String id;
	
	public inquiries() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public String getQcategory() {
		return qcategory;
	}
	public void setQcategory(String qcategory) {
		this.qcategory = qcategory;
	}
	public String getQcenter() {
		return qcenter;
	}
	public void setQcenter(String qcenter) {
		this.qcenter = qcenter;
	}
	public String getQtitle() {
		return qtitle;
	}
	public void setQtitle(String qtitle) {
		this.qtitle = qtitle;
	}
	public String getQcontent() {
		return qcontent;
	}
	public void setQcontent(String qcontent) {
		this.qcontent = qcontent;
	}
	public String getQfile() {
		return qfile;
	}
	public void setQfile(String qfile) {
		this.qfile = qfile;
	}
	public Date getQdate() {
		return qdate;
	}
	public void setQdate(Date qdate) {
		this.qdate = qdate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
}
