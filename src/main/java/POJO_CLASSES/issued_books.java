package POJO_CLASSES;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;

@SuppressWarnings("serial")
@Entity
@IdClass(issued_books.class)
public class issued_books implements Serializable
{
	private String book_id;
	@Id
	private String book_title;
	@Id
	private String member_id;
	private LocalDate date;
	
	public issued_books(String book_id, String book_title, String member_id, LocalDate date) {
		super();
		this.book_id = book_id;
		this.book_title = book_title;
		this.member_id = member_id;
		this.date = date;
	}
	
	public issued_books() {
		super();
	}
	
	public String getBook_id() {
		return book_id;
	}
	
	public void setBook_id(String book_id) {
		this.book_id = book_id;
	}
	
	public String getBook_title() {
		return book_title;
	}
	
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	
	public String getMember_id() {
		return member_id;
	}
	
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	
	public LocalDate getDate() {
		return date;
	}
	
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
}