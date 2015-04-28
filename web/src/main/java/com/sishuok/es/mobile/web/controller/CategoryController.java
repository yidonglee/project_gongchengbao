package com.sishuok.es.mobile.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sishuok.es.bussiness.product.entity.Category;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.web.bind.annotation.PageableDefaults;
import com.sishuok.es.common.web.controller.BaseCRUDController;
@Controller("mobileCategoryController")
@RequestMapping("/mobile/category")
public class CategoryController extends BaseCRUDController<Category, Long> {
	
	  @RequestMapping(method = RequestMethod.GET)
	   @PageableDefaults(sort = "id=desc")
	    public String list(Searchable searchable, Model model) {

	        if (permissionList != null) {
	            this.permissionList.assertHasViewPermission();
	        }
	        model.addAttribute("list", baseService.findAllWithSort(searchable));
	        return "mobile/project/listCategory";
	    }
}
