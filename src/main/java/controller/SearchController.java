package controller;

import dao.ItemDAO;
import entity.Item;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import spring.SpringContextHolder;

@Controller
public class SearchController {

    @RequestMapping("/search.html")
    public ModelAndView search(HttpServletRequest req) {
        String login = (String) req.getSession().getAttribute("login");
        boolean isLogin = false;
        if (login != null) {
            isLogin = true;
        }
        List<Item> items;
        String cat = req.getParameter("cat");
        List<Item> allItems = ((ItemDAO) SpringContextHolder.getContext().getBean("idao")).getItems();

        if (cat != null) {
            items = ((ItemDAO) SpringContextHolder.getContext().getBean("idao")).getItemsByCategory(cat);
            ModelAndView model = new ModelAndView("main");
            model.addObject("isLogin", isLogin);
            model.addObject("items", items);
            return model;
        } else {
            String search = req.getParameter("search");
            if (search != null) {
                items = new LinkedList<>();
                if (search.length() > 0) {
                    for (Item item : allItems) {
                        String name = item.getName();
                        for (int i = 0; i < name.length(); i++) {
                            Character c1 = search.charAt(0);
                            String s1 = c1.toString();
                            Character c2 = name.charAt(i);
                            String s2 = c2.toString();
                            if (s1.equalsIgnoreCase(s2)) {
                                if (search.length() == 1) {
                                    items.add(item);
                                    break;
                                } else {
                                    boolean isFound = true;
                                    for (int j = 1; j < search.length(); j++) {
                                        if (name.length() <= (i + j)) {
                                            isFound = false;
                                            break;
                                        }
                                        c1 = search.charAt(j);
                                        s1 = c1.toString();
                                        c2 = name.charAt(i + j);
                                        s2 = c2.toString();
                                        if (!s1.equalsIgnoreCase(s2)) {
                                            isFound = false;
                                            break;
                                        }
                                    }
                                    if (isFound) {
                                        items.add(item);
                                    }
                                }
                            }
                        }
                    }
                    ModelAndView model = new ModelAndView("main");
                    model.addObject("isLogin", isLogin);
                    model.addObject("items", items);
                    return model;
                } else {
                    ModelAndView model = new ModelAndView("main");
                    model.addObject("isLogin", isLogin);
                    model.addObject("items", allItems);
                    return model;
                }

            } else {
                ModelAndView model = new ModelAndView("main");
                model.addObject("isLogin", isLogin);
                model.addObject("items", allItems);
                return model;
            }

        }
    }
}
