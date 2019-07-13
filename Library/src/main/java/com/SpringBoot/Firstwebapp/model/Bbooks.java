package com.SpringBoot.Firstwebapp.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

public class Bbooks {

	private int book_id;
	private String bookname;
	private String date1;
	private String date2;
	private int fine;


	
	public Bbooks(int book_id, String bookname, String date1, String date2, int fine) {
		super();
		this.book_id = book_id;
		this.bookname = bookname;
		this.date1 = date1;
		this.date2 = date2;
		this.fine = fine;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getDate1() {
		return date1;
	}

	public void setDate1(String date1) {
		this.date1 = date1;
	}

	public String getDate2() {
		return date2;
	}

	public void setDate2(String date2) {
		this.date2 = date2;
	}

	public int getFine() {
		return fine;
	}

	public void setFine(int fine) {
		this.fine = fine;
	}

}
