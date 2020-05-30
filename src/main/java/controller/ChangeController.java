package controller;

import dao.UserDAO;
import entity.User;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class ChangeController {

    @RequestMapping("/change.html")
    public ModelAndView change(HttpServletRequest req, HttpServletResponse resp) {
        String login = (String) req.getSession().getAttribute("login");
        if (login == null) {
            try {
                resp.sendRedirect("/Z13_IB/main.html");
            } catch (IOException ex) {
            }
            return null;
        } else {
            UserDAO udao = (UserDAO) SpringContextHolder.getContext().getBean("udao");
            String phone = req.getParameter("phone");
            if (phone == null) {
                ModelAndView change = new ModelAndView("change");
                change.addObject("isLogin", true);
                change.addObject("login", login);
                change.addObject("u", udao.getUserByLogin(login));
                return change;
            } else {
                //todo
                String email = req.getParameter("email");
                String city = req.getParameter("city");
                String pass = req.getParameter("pass");
                String pass2 = req.getParameter("pass2");
                if (!pass.equals(pass2)) {
                    ModelAndView change = new ModelAndView("change");
                    change.addObject("isLogin", true);
                    change.addObject("login", login);
                    return change;
                } else {
                    try {
                        User u = udao.getUserByLogin(login);
                        if (city.length() > 0) {
                            u.setCity(city);
                        }
                        if (email.length() > 0) {
                            u.setEmail(email);
                        }
                        if (phone.length() > 0) {
                            u.setPhone(phone);
                        }
                        if (pass.length() > 0) {
                            u.setPass(pass);
                        }
                        udao.updateUser(u);
                        resp.sendRedirect("/Z13_IB/main.html");
                    } catch (IOException ex) {
                    }
                    return null;
                }
            }
        }
    }
}
