package com.niit.shopcart.model;

import javax.persistence.*;
import org.springframework.stereotype.Component;

@Entity
@Table(name="user")
@Component
public class User {
	
	@Id
	private String id;
	private String password;
	private boolean isAdmin;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
}
