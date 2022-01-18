package dto;

import java.io.Serializable;
import java.util.Date;

public class Event implements Serializable {
	
	public Event() {
		super();
	}
	
	private int e_num;
	private String e_title;
	private String e_con;
	private Date e_day1;
	private Date e_day2;
	private String e_pic;
	public int getE_num() {
		return e_num;
	}
	public void setE_num(int e_num) {
		this.e_num = e_num;
	}
	public String getE_title() {
		return e_title;
	}
	public void setE_title(String e_title) {
		this.e_title = e_title;
	}
	public String getE_con() {
		return e_con;
	}
	public void setE_con(String e_con) {
		this.e_con = e_con;
	}
	public Date getE_day1() {
		return e_day1;
	}
	public void setE_day1(Date e_day1) {
		this.e_day1 = e_day1;
	}
	public Date getE_day2() {
		return e_day2;
	}
	public void setE_day2(Date e_day2) {
		this.e_day2 = e_day2;
	}
	public String getE_pic() {
		return e_pic;
	}
	public void setE_pic(String e_pic) {
		this.e_pic = e_pic;
	}
	
}
