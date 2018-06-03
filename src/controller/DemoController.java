package controller;

import model.Demo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import service.IDemoService;

@Controller
@RequestMapping(value="demo")
public class DemoController {
    @Autowired
    private IDemoService demoService;
    @RequestMapping(value ="/add")
    public @ResponseBody String add(Demo demo){
        demoService.add(demo);
        return "" ;
    }
}
