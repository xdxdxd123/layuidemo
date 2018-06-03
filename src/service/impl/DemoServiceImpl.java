package service.impl;

import dao.IDemoDao;
import model.Demo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.IDemoService;
import javax.transaction.Transactional;
import java.io.Serializable;

@Transactional
@Service("demoService")
public class DemoServiceImpl  implements  IDemoService{
    @Autowired
    private IDemoDao demoDao;

    @Override
    public Serializable add(Demo demo) {
        return demoDao.add(demo);
    }
}
