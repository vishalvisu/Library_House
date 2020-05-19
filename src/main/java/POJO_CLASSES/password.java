package POJO_CLASSES;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class password {

	@Id
	private String id;
	
	public password(String idString) {
		super();
		this.id = idString;
	}
	public password() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}}
