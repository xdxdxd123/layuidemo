package service.impl;

import dao.IDemoDao;
import model.Demo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IDemoService;

import java.io.Serializable;

@Service(value = "demoService")
public class DemoServiceImpl  implements  IDemoService{
    @Autowired
    private IDemoDao demoDao;

    @Override
    public Serializable add(Demo demo) {
        return demoDao.add(demo);
    }
}
