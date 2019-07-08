package com.SpringBoot.Firstwebapp.Entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Users {

	@Id
	private String Uid;
	private String Ufname;
	private String Ulname;
	private int Uage;
	private String Uaddress;
	private long Uphone;
	private String Uemail;

	public Users() {
		super();
	}

	public Users(String uid, String ufname, String ulname, int uage, String uaddress, long uphone, String uemail) {
		super();
		Uid = uid;
		Ufname = ufname;
		Ulname = ulname;
		Uage = uage;
		Uaddress = uaddress;
		Uphone = uphone;
		Uemail = uemail;
	}

	public String getUid() {
		return Uid;
	}

	public void setUid(String uid) {
		Uid = uid;
	}

	public String getUfname() {
		return Ufname;
	}

	public void setUfname(String ufname) {
		Ufname = ufname;
	}

	public String getUlname() {
		return Ulname;
	}

	public void setUlname(String ulname) {
		Ulname = ulname;
	}

	public int getUage() {
		return Uage;
	}

	public void setUage(int uage) {
		Uage = uage;
	}

	public String getUaddress() {
		return Uaddress;
	}

	public void setUaddress(String uaddress) {
		Uaddress = uaddress;
	}

	public long getUphone() {
		return Uphone;
	}

	public void setUphone(long uphone) {
		Uphone = uphone;
	}

	public String getUemail() {
		return Uemail;
	}

	public void setUemail(String uemail) {
		Uemail = uemail;
	}

	@Override
	public String toString() {
		return "Users [Uid=" + Uid + ", Ufname=" + Ufname + ", Ulname=" + Ulname + ", Uage=" + Uage + ", Uaddress="
				+ Uaddress + ", Uphone=" + Uphone + ", Uemail=" + Uemail + "]";
	}
}
