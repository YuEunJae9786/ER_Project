package com.erproject.command;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductInfoVO {
	
	private String pcode;
	private String pname;
	private String cpname;
	private String pbasicinfo;
	private String pcontent;
	private String pspec1;
	private String pspec2;
	private String pspec3;
	
	public ProductInfoVO() {
		
	}
	public ProductInfoVO(String pcode, String pname, String cpname, String pbasicinfo, String pcontent, String pspec1,
			String pspec2, String pspec3) {
		super();
		this.pcode = pcode;
		this.pname = pname;
		this.cpname = cpname;
		this.pbasicinfo = pbasicinfo;
		this.pcontent = pcontent;
		this.pspec1 = pspec1;
		this.pspec2 = pspec2;
		this.pspec3 = pspec3;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getCpname() {
		return cpname;
	}
	public void setCpname(String cpname) {
		this.cpname = cpname;
	}
	public String getPbasicinfo() {
		return pbasicinfo;
	}
	public void setPbasicinfo(String pbasicinfo) {
		this.pbasicinfo = pbasicinfo;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPspec1() {
		return pspec1;
	}
	public void setPspec1(String pspec1) {
		this.pspec1 = pspec1;
	}
	public String getPspec2() {
		return pspec2;
	}
	public void setPspec2(String pspec2) {
		this.pspec2 = pspec2;
	}
	public String getPspec3() {
		return pspec3;
	}
	public void setPspec3(String pspec3) {
		this.pspec3 = pspec3;
	}
	@Override
	public String toString() {
		return "ProductInfoVO [pcode=" + pcode + ", pname=" + pname + ", cpname=" + cpname + ", pbasicinfo="
				+ pbasicinfo + ", pcontent=" + pcontent + ", pspec1=" + pspec1 + ", pspec2=" + pspec2 + ", pspec3="
				+ pspec3 + "]";
	}
	
	

}
