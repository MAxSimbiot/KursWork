package controller;

import dao.ItemDAO;
import entity.Item;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class PayController {

    @RequestMapping("/pay.html")
    public ModelAndView pay(HttpServletRequest req) {
        String login = (String) req.getSession().getAttribute("login");
        boolean isLogin = false;
        ItemDAO idao = (ItemDAO) SpringContextHolder.getContext().getBean("idao");
        Item item = idao.getItemById(Integer.parseInt(req.getParameter("id")));
        if (login != null) {
            isLogin = true;

            if (req.getParameter("top") == null && req.getParameter("up") == null) {
                ModelAndView model = new ModelAndView("pay");
                model.addObject("i", item);
                model.addObject("isLogin", isLogin);
                model.addObject("login", login);
                return model;
            } else {
                String top = req.getParameter("top");
                String up = req.getParameter("up");
                if (top != null) {
                    item.setIsTop(true);
                } else {
                    item.setDate(new Date());
                }
                idao.updateItem(item);
                ModelAndView itemView = new ModelAndView("item");
                itemView.addObject("login", login);
                itemView.addObject("isLogin", isLogin);
                itemView.addObject("i", idao.getItemById(Integer.parseInt(req.getParameter("id"))));
                return itemView;
            }

        } else {
            ModelAndView main = new ModelAndView("main");
            main.addObject("login", login);
            main.addObject("isLogin", isLogin);
            main.addObject("items", idao.getItems());
            return main;
        }

    }
}
