package com.niit.shopcart.dao;

import java.util.List;
import java.util.ListIterator;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.Category;

@Repository
public class CategoryImpl implements CategoryDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.openSession();
	}
	
	@Transactional
	public List<Category> list() {
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) sessionFactory.openSession().createCriteria(Category.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		ListIterator<Category> itr = listCategory.listIterator();
		while(itr.hasNext()){
			System.out.println(itr.next().toString());
		}
		return listCategory;
	}
	
	@Transactional
	public void saveOrUpdate(Category category){
		System.out.println(category.getId());
		System.out.println(category.getName());
		System.out.println(category.getDescription());
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(category);
		tx.commit();
		
		System.out.println("Saved"+category);
	}
	
	@Transactional
	public void delete(String id){
		System.out.println(id);
		Category CategoryToDelete = new Category();
		CategoryToDelete.setId(id);
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		session.delete(CategoryToDelete);
		tx.commit();
	}
	
	@Transactional
	public Category get(String id){
		String hq1="from Category where id='"+id+"'";
		Query query = sessionFactory.openSession().createQuery(hq1);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		if(listCategory!=null && !listCategory.isEmpty()){
			return listCategory.get(0);
		}
		return null;
	}
	
	@Transactional
	public Category getByName(String name){
		String hq1= "from Category where name='"+name+"'";
		Query query = sessionFactory.openSession().createQuery(hq1);
		@SuppressWarnings("unchecked")
		List<Category> listCategory = (List<Category>) query.list();
		if(listCategory!=null && !listCategory.isEmpty()){
			return listCategory.get(0);
		}
		return null;
	}
	
}
