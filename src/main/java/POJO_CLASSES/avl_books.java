package POJO_CLASSES;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class avl_books {
	
	@Id
	private String id;
	private String title;
	private String author;
	private String iSBN_CODE;
	private String  Subject;
	private Boolean is_avl;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getiSBN_CODE() {
		return iSBN_CODE;
	}
	public void setiSBN_CODE(String iSBN_CODE) {
		this.iSBN_CODE = iSBN_CODE;
	}
	public String getSubject() {
		return Subject;
	}
	public void setSubject(String subject) {
		Subject = subject;
	}
	public Boolean getIs_avl() {
		return is_avl;
	}
	public void setIs_avl(Boolean is_avl) {
		this.is_avl = is_avl;
	}
	public avl_books(String id, String title, String author, String iSBN_CODE, String subject, Boolean is_avl) {
		super();
		this.id = id;
		this.title = title;
		this.author = author;
		this.iSBN_CODE = iSBN_CODE;
		Subject = subject;
		this.is_avl = is_avl;
	}
	public avl_books() {
		super();
	}
	
	
}
