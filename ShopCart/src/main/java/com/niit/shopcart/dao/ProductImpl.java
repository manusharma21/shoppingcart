package com.niit.shopcart.dao;

import java.util.Iterator;
import java.util.List;


import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.Product;

@Repository
public class ProductImpl implements ProductDao{
	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	
	@Transactional
	public List<Product> list() {
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) getSession().createCriteria(Product.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		//Iterator itr = list.iterator();
		for(Product pro : list){
			System.out.println(pro);
		}
		return list;
	}
	
	@Transactional
	public Product get(String id) {
		String hql  = "from Product where id='"+id+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Product> list = (List<Product>) query.list();
		if(list!=null && !list.isEmpty()){
			return list.get(0);
		}
		return null;
	}
	
	@Transactional
	public void saveOrUpdate(Product product) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(product);
		tx.commit();
		System.out.println("Saved"+product);
	}

	@Transactional
	public void delete(String id) {
		Product product = new Product();
		product.setId(id);
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.delete(product);
		tx.commit();
		System.out.println("deleted"+product);
	}
	
	
	
}
