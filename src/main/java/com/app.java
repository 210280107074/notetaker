package com;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class app {
    public static void main(String[] args) {
        Configuration cfg = new Configuration();
        cfg.configure();
        SessionFactory factory = cfg.buildSessionFactory();
        file1 f = new file1();
        f.setId(1);
        f.setName("dhruvil");
        
       Session session = factory.openSession();
       
        session.save(f);
        session.beginTransaction();
        session.getTransaction().commit();
        session.close(); 
    }
}
