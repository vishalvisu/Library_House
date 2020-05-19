package DTO;

public class member_Details {

	private String name;
	private String id;
	private String department;
	private String stream;
	private String start_year;
	private String end_year;
	
	public member_Details(String start_year, String end_year) {
		super();
		this.start_year = start_year;
		this.end_year = end_year;
	}
	
	public String getStart_year() {
		return start_year;
	}
	
	public void setStart_year(String start_year) {
		this.start_year = start_year;
	}
	
	public String getEnd_year() {
		return end_year;
	}
	
	public void setEnd_year(String end_year) {
		this.end_year = end_year;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getStream() {
		return stream;
	}
	
	public void setStream(String stream) {
		this.stream = stream;
	}
	
	public member_Details(String name, String id, String department, String stream, String session) {
		super();
		this.name = name;
		this.id = id;
		this.department = department;
		this.stream = stream;
	}
	
	public member_Details() {
		super();
	}
}
