package com.SpringBoot.Firstwebapp.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Users {

	@Id
	@Column(name="uid")
	private String uId;
	
	@Column(name="ufname")
	private String uFname;
	
	@Column(name="ulname")
	private String uLname;
	
	@Column(name="uage")
	private int uAge;
	
	@Column(name="uaddress")
	private String uAddress;
	
	@Column(name="uphone")
	private long uPhone;
	
	@Column(name="uemail")
	private String uEmail;
	
	@Column(name="upassword")
	private String uPassword;

	public String getPassword() {
		return uPassword;
	}

	public void setPassword(String upassword) {
		this.uPassword = upassword;
	}

	public Users() {
		super();
	}

	public Users(String uid, String ufname, String ulname, int uage, String uaddress, long uphone, String uemail,
			String upassword) {
		super();
		uId = uid;
		uFname = ufname;
		uLname = ulname;
		uAge = uage;
		uAddress = uaddress;
		uPhone = uphone;
		uEmail = uemail;
		uPassword = upassword;
	}

	public String getUid() {
		return uId;
	}

	public void setUid(String uid) {
		uId = uid;
	}

	public String getUfname() {
		return uFname;
	}

	public void setUfname(String ufname) {
		uFname = ufname;
	}

	public String getUlname() {
		return uLname;
	}

	public void setUlname(String ulname) {
		uLname = ulname;
	}

	public int getUage() {
		return uAge;
	}

	public void setUage(int uage) {
		uAge = uage;
	}

	public String getUaddress() {
		return uAddress;
	}

	public void setUaddress(String uaddress) {
		uAddress = uaddress;
	}

	public long getUphone() {
		return uPhone;
	}

	public void setUphone(long uphone) {
		uPhone = uphone;
	}

	public String getUemail() {
		return uEmail;
	}

	public void setUemail(String uemail) {
		uEmail = uemail;
	}
}


