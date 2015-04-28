package com.sishuok.es.mobile.web.controller;

import org.springframework.ui.Model;

import com.sishuok.es.common.entity.enums.BooleanEnum;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.entity.UserStatus;
import com.sishuok.es.sys.user.service.UserService;

public class UserController extends BaseCRUDController<User, Long> {
//    private UserService getUserService() {
//        return (UserService) baseService;
//    }

    public UserController() {
//        setResourceIdentity("mo:user");
    }

    @Override
    protected void setCommonData(Model model) {
        model.addAttribute("statusList", UserStatus.values());
        model.addAttribute("booleanList", BooleanEnum.values());
    }
    
    
}
