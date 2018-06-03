package dao.impl;

import dao.IDemoDao;
import model.Demo;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import service.IDemoService;

import java.io.Serializable;

@Repository(value = "demoDao")
public class DemoDaoImpl implements IDemoDao
{
    @Autowired
    private SessionFactory sessionFactory;
    public Serializable add(Demo demo) {
        return sessionFactory.getCurrentSession().save(demo);
    }
}
