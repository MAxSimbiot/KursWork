package controller;

import dao.ItemDAO;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class MainController {
    
    @RequestMapping("/main.html")
    public ModelAndView main(HttpServletRequest req){
        ModelAndView model = new ModelAndView("main");
        String login = (String)req.getSession().getAttribute("login");
        boolean isLogin = false;
        if(login != null){
            isLogin = true;
        }
        model.addObject("login", login);
        model.addObject("isLogin", isLogin);
        model.addObject("items", ((ItemDAO)SpringContextHolder.getContext().getBean("idao")).getItems());
        return model;
    }
}
