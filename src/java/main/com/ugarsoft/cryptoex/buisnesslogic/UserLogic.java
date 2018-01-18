package com.ugarsoft.cryptoex.buisnesslogic;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.LogicalExpression;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.ugarsoft.cryptoex.dao.GenericDAO;
import com.ugarsoft.cryptoex.model.User;



@Component
public class UserLogic extends GenericDAO<User, Long>{
	
	@Transactional(readOnly=true)
	public User loginUser(String userName, String password) {
		Criteria cr = getCurrentSession().createCriteria(User.class);
		List<User> list = new ArrayList<>();
		User user = null;
		Criterion userNam = Restrictions.eq("email", userName);
		Criterion pass = Restrictions.eq("password",password);
		try {
			LogicalExpression andExp = Restrictions.and(userNam, pass);	
			cr.add(andExp);
			cr.addOrder(Order.asc("id"));
			list = cr.list();
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(!list.isEmpty() && list != null ){
			user= list.get(0);
		}
		return user;
		
	}

}
