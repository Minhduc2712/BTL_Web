package Model;

import java.sql.Timestamp;

public class GlobalRoom {

	private Integer id;

	private Timestamp createdAt;

	// Constructors, getters, and setters
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
}
