package com.SpringBoot.Firstwebapp.Entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class Books {

	@Id
	public int B_id;
	public String B_name;
	public String B_author;
	public int B_quantity;
	public int B_price;
	public String B_category;

	public Books() {
		super();

	}

	public Books(int b_id, String b_name, String b_author, int b_quantity, int b_price, String b_category) {
		super();
		B_id = b_id;
		B_name = b_name;
		B_author = b_author;
		B_quantity = b_quantity;
		B_price = b_price;
		B_category = b_category;
	}

	public int getB_id() {
		return B_id;
	}

	public void setB_id(int b_id) {
		B_id = b_id;
	}

	public String getB_name() {
		return B_name;
	}

	public void setB_name(String b_name) {
		B_name = b_name;
	}

	public String getB_author() {
		return B_author;
	}

	public void setB_author(String b_author) {
		B_author = b_author;
	}

	public int getB_quantity() {
		return B_quantity;
	}

	public void setB_quantity(int b_quantity) {
		B_quantity = b_quantity;
	}

	public int getB_price() {
		return B_price;
	}

	public void setB_price(int b_price) {
		B_price = b_price;
	}

	public String getB_category() {
		return B_category;
	}

	public void setB_category(String b_category) {
		B_category = b_category;
	}
	public String toString() {
		return "Books [B_id=" + B_id + ", B_name=" + B_name + ", B_author=" + B_author + ", B_quantity=" + B_quantity
				+ ", B_price=" + B_price + ", B_category=" + B_category + "]";
	}

}
