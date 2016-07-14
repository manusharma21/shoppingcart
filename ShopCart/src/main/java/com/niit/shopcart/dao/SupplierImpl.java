package com.niit.shopcart.dao;

import java.util.List;

import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.Supplier;

@Repository
public class SupplierImpl implements SupplierDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
	return sessionFactory.openSession();
	}
	
	@Transactional
	public List<Supplier> list(){
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) sessionFactory.openSession().createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return list;
	}
	
	@Transactional
	public String delete(String id){
		Supplier supplier = new Supplier();
		supplier.setId(id);
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.delete(supplier);
		tx.commit();
		return null;
	}
	
	@Transactional
	public Supplier get(String id){
		String hql = "from Supplier where id='"+id+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<Supplier> list = (List<Supplier>) query.list();
		if(list!=null && !list.isEmpty()){
			return list.get(0);
		}
		return null;
	}
	
	@Transactional
	public Supplier getByName(String name){
		String hql = "from Supplier where name = '"+name+"'";
		Query query = sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List <Supplier> list = (List<Supplier>) query.list();
		if(list!=null && !list.isEmpty()){
			return list.get(0);
		}
		return null;
	}
	
	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(supplier);
		tx.commit();
		System.out.println("Saved"+supplier);
		
	}


}