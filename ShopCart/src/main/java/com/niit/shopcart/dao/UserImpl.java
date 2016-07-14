package com.niit.shopcart.dao;

import java.util.List;


import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shopcart.model.User;

@Repository
public class UserImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	@Transactional
	public boolean isValidUser(String id, String password, boolean isAdmin) {
		String hql = "from User where id='"+id+"' and "+"password='"+password+"'";
		//Query query=sessionFactory.getCurrentSession().createQuery(hql);
		Query query=sessionFactory.openSession().createQuery(hql);
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) query.list();
		if(list!=null && !list.isEmpty()){
			return true;
		}
		return false;
	}


	
	 
}
