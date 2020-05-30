package dao;

import entity.User;
import hibernate.HibernateUtil;
import org.hibernate.Session;

public class UserDAO {
    public User getUserByLogin(String login){
        Session s = HibernateUtil.getSessionFactory().openSession();
        User out = null;
        s.beginTransaction();
        out = (User)s.createQuery("FROM User WHERE login='"+login+"'").uniqueResult();
        s.getTransaction().commit();
        s.close();
        return out;
    } 
    public void addUser(User u){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.save(u);
        s.getTransaction().commit();
        s.close();
    }
    public void updateUser(User u){
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(u);
        s.getTransaction().commit();
        s.close();
    }
}
