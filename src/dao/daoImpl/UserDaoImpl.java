package dao.daoImpl;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import dao.UserDao;
import model.User;


public class UserDaoImpl implements UserDao{

	@Override
	public User findByNameAndPswd(String name, String pswd) {
		Configuration cfg = new Configuration().configure();
		SessionFactory sf = cfg.buildSessionFactory();
		Session session = sf.openSession();		
		Transaction ts = session.beginTransaction();
		
		String queryStr = "FROM User WHERE userName=? AND password=?";
		Query query = session.createQuery(queryStr);
		query.setString(0, name);
		query.setString(1, pswd);
		
		List list = query.list();
		
		ts.commit();
		session.close();
		
		if (list.size()>0) 
			 return (User)list.get(0);
		 else 
			 return null;
	}

}
