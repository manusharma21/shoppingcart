package com.niit.shopcart.model;

import javax.persistence.*;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

@Entity 
@Table(name="category")
@Component
public class Category {
	
	@Id
	private String id;
	
	@Size(min=5, max=15, message="Enter Name between 5 to 15 characters")
	private String name;
	
	@Size(min=5, message="Description should be greater than 5 charcters")
	private String description;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	@Override
	public String toString() {
		return "Category [id=" + id + ", name=" + name + ", description=" + description + "]";
	}
	
}
