package com.sishuok.es.mobile.web.controller;

import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.web.bind.annotation.CurrentUser;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("mobileHomeController")
@RequestMapping("/mobile")
public class HomeController {



    @RequestMapping(value = {"/home"}) //spring3.2.2 bug see  http://jinnianshilongnian.iteye.com/blog/1831408
    public String index(@CurrentUser User user, Model model) {
    	model.addAttribute(Const.MOBILE_OP_TYPE, Const.OP_HOME);
        return "mobile/home";
    }




}
