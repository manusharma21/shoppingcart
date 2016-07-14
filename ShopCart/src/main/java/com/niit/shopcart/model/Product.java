package com.niit.shopcart.model;

import javax.persistence.*;
import javax.validation.constraints.*;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.stereotype.Component;

@Entity
@Table(name="product")
@Component
public class Product {
	
	@Id
	private String id;
	
	@NotNull
	private String name;
	
	@NotBlank
	@Size(min=5, message="Description should be greater than 5 characters")
	private String description;
	
	@Min(value=0)
	private double price;
	
	@NotNull
	private String category_id;
	
	@NotNull
	private String supplier_id;
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public String getSupplier_id() {
		return supplier_id;
	}
	public void setSupplier_id(String supplier_id) {
		this.supplier_id = supplier_id;
	}
	
	@ManyToOne
	@JoinColumn(name="category_id", nullable=false, updatable=false, insertable=false)
	private Category category;
	public Category getCategory(){
		return category;
	}
	
	public void setCategory(Category  category){
		this.category = category;
	}
	
	@ManyToOne
	@JoinColumn(name="supplier_id", nullable=false, updatable=false, insertable=false)
	private Supplier supplier;
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", price=" + price
				+ ", category_id=" + category_id + ", supplier_id=" + supplier_id + ", category=" + category
				+ ", supplier=" + supplier + "]";
	}
	
	
}
