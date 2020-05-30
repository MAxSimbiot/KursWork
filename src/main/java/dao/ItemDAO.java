package dao;

import entity.Item;
import hibernate.HibernateUtil;
import java.util.List;
import org.hibernate.Session;

public class ItemDAO {
    public List<Item> getItems(){
        List<Item> out;
        Session s = HibernateUtil.getSessionFactory().openSession();
        out = s.createQuery("FROM Item").list();
        s.close();
        return out;
    }
    public List<Item> getItemsByCategory(String cat){
        Session s = HibernateUtil.getSessionFactory().openSession();
        List<Item> out = null;
        s.beginTransaction();
        out = s.createQuery("FROM Item WHERE cat='"+cat+"'").list();
        s.getTransaction().commit();
        s.close();
        return out;
    } 
    public Item getItemById(int id){
        Session s = HibernateUtil.getSessionFactory().openSession();
        Item out = null;
        s.beginTransaction();
        out = (Item)s.createQuery("FROM Item WHERE id="+id+"").uniqueResult();
        s.getTransaction().commit();
        s.close();
        return out;
    }

    public void updateItem(Item item) {
        Session s = HibernateUtil.getSessionFactory().openSession();
        s.beginTransaction();
        s.update(item);
        s.getTransaction().commit();
        s.close();
    }
}
