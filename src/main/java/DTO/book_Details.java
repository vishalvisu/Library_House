package DTO;

public class book_Details {

	private String id;
	private String title;
	private String authors;
	private String ISBN_CODE;
	private String subject;
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
	public String getAuthors() {
		return authors;
	}
	public void setAuthors(String authors) {
		this.authors = authors;
	}
	public String getISBN_CODE() {
		return ISBN_CODE;
	}
	public void setISBN_CODE(String iSBN_CODE) {
		ISBN_CODE = iSBN_CODE;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public book_Details(String id, String title, String authors, String iSBN_CODE, String subject) {
		super();
		this.id = id;
		this.title = title;
		this.authors = authors;
		ISBN_CODE = iSBN_CODE;
		this.subject = subject;
	}
	public book_Details() {
		super();
	}
	
	
	
}
