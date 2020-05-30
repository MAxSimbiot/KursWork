package controller;

import dao.UserDAO;
import entity.User;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class LoginController {

    @RequestMapping("/login.html")
    public ModelAndView login(HttpServletRequest req, HttpServletResponse resp) {
        String login = req.getParameter("login");
        if (login == null) {
            return new ModelAndView("login");
        } else {
            String pass = req.getParameter("pass");
            User u = ((UserDAO) SpringContextHolder.getContext().getBean("udao")).getUserByLogin(login);
            if (u == null) {
                return new ModelAndView("login");
            } else {
                if (!u.getPass().equals(pass)) {
                    return new ModelAndView("login");
                } else {
                    req.getSession().setAttribute("login", login);
                    try {
                        resp.sendRedirect("/Z13_IB/main.html");
                    } catch (IOException ex) {
                    }
                }
            }
        }
        ModelAndView model = new ModelAndView("login");
        return model;
    }
}
