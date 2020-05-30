package controller;

import dao.UserDAO;
import entity.User;
import java.io.IOException;
import java.util.Date;
import java.util.Random;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class RegisterController {

    @RequestMapping("/register.html")
    public ModelAndView register(HttpServletRequest req, HttpServletResponse resp) {
        String loginInSession = (String) req.getSession().getAttribute("login");
        if (loginInSession != null) {
            try {
                resp.sendRedirect("/Z13_IB/main.html");
            } catch (IOException ex) {
            }
        } else {
            String login = req.getParameter("login");
            if (login == null) {
                return new ModelAndView("register");
            } else {
                String pass = req.getParameter("pass");
                String pass2 = req.getParameter("pass2");
                if (!pass.equals(pass2)) {
                    return new ModelAndView("register");
                } else {
                    UserDAO udao = (UserDAO) SpringContextHolder.getContext().getBean("udao");
                    if (udao.getUserByLogin(login) != null) {
                        return new ModelAndView("register");
                    } else {
                        try {
                            User u = new User(new Random().nextInt(), login, pass, req.getParameter("phone"),
                                    req.getParameter("email"), req.getParameter("city"), 0, new Date(), "");

                            udao.addUser(u);
                            resp.sendRedirect("/Z13_IB/main.html");
                        } catch (IOException ex) {
                        }
                    }
                }
            }
        }
        return null;
    }
}
