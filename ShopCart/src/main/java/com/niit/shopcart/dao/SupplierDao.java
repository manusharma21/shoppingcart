package com.niit.shopcart.dao;

import java.util.List;
import com.niit.shopcart.model.Supplier;

public interface SupplierDao {
	
	public List<Supplier> list();
	public Supplier get(String id);
	public Supplier getByName(String name);
	public void saveOrUpdate(Supplier supplier);
	public String delete(String id);
	
	
}
