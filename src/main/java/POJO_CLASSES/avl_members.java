package POJO_CLASSES;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class avl_members {
	
	@Id
	private String id;
	private String name;
	private String dept;
	private String branch;
	private String session;
	
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public avl_members(String id, String name, String dept, String branch, String session) {
		super();
		this.id = id;
		this.name = name;
		this.dept = dept;
		this.branch = branch;
		this.session = session;
	}
	public avl_members() {
		super();
	}

}

