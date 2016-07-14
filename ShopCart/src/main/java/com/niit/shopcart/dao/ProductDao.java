package com.niit.shopcart.dao;

import java.util.List;

import com.niit.shopcart.model.Product;

public interface ProductDao {
	
	public List<Product> list();
	
	public Product get(String id);
	
	public void saveOrUpdate(Product product);
	
	public void delete(String id);
	
}
