package com.SpringBoot.Firstwebapp.Entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;

@Entity
@Component
public class BarrowBooks {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int trasac_id;
	private int book_id;
	private String user_id;
	private String date1;
	private String bookname;

	public BarrowBooks() {
		super();
	}

	public BarrowBooks(int trasac_id, int book_id, String user_id, String date1, String bookname) {
		super();
		this.trasac_id = trasac_id;
		this.book_id = book_id;
		this.user_id = user_id;
		this.date1 = date1;
		this.bookname = bookname;
	}

	public int getTrasac_id() {
		return trasac_id;
	}

	public void setTrasac_id(int trasac_id) {
		this.trasac_id = trasac_id;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getDate() {
		return date1;
	}

	public void setDate(String date1) {
		this.date1 = date1;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	@Override
	public String toString() {
		return "BarrowBooks [trasac_id=" + trasac_id + ", book_id=" + book_id + ", user_id=" + user_id + ", date1="
				+ date1 + ", bookname=" + bookname + "]";
	}
}
