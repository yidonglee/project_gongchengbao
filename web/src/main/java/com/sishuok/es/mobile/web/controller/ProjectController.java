package com.sishuok.es.mobile.web.controller;

import com.sishuok.es.bussiness.product.entity.Category;
import com.sishuok.es.bussiness.product.entity.Product;
import com.sishuok.es.bussiness.product.service.SubProductService;
import com.sishuok.es.bussiness.tree.entity.Tree;
import com.sishuok.es.common.entity.search.SearchOperator;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.web.bind.annotation.PageableDefaults;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.service.UserService;
import com.sishuok.es.sys.user.web.bind.annotation.CurrentUser;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller("mobileProjectController")
@RequestMapping("/mobile")
public class ProjectController extends BaseCRUDController<Product, Long> {
	@Autowired
	private UserService userService;
	@Autowired
	private SubProductService subProductService;
    @RequestMapping(value = {"/listProjects"})
    @PageableDefaults(sort = "id=desc")
    public String index(@CurrentUser User user, Model model) {
    	model.addAttribute(Const.MOBILE_OP_TYPE, Const.OP_PROJECTS);
    	 Page<Product> page = baseService.findAll(Searchable.newSearchable());
         for(Product p : page.getContent())
         {
         	p.setUser(userService.findOne(p.getUserId()));
         	p.setSubProducts(subProductService.findByProduct(p));
         }
         model.addAttribute("page", page);
         return "mobile/project/listProjects";
    }
    @RequestMapping(value = "/category-{categoryId}/tree-{treeId}", method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    public String listByCategoryandTree(Searchable searchable, @PathVariable("categoryId") Category category, @PathVariable("treeId") Tree tree, Model model) {
        if (category != null) {
            model.addAttribute("category", category);
            searchable.addSearchFilter("category.id", SearchOperator.eq, category.getId());
        }
        if(tree !=null)
        {
        	 model.addAttribute("tree", tree);
             searchable.addSearchFilter("tree.id", SearchOperator.eq, tree.getId());
        }
        if (permissionList != null) {
            this.permissionList.assertHasViewPermission();
        }
        Page<Product> page = baseService.findAll(searchable);
        for(Product p : page.getContent())
        {
        	p.setUser(userService.findOne(p.getUserId()));
        	p.setSubProducts(subProductService.findByProduct(p));
        }
        model.addAttribute("page", page);
        return "mobile/project/listProjects";
    }
    @RequestMapping(value = "/project/{id}", method = RequestMethod.GET)
    @PageableDefaults(sort = "id=desc")
    public String listProjects(@PathVariable("id") Product product, Model model) {
    	product.setUser(userService.findOne(product.getUserId()));
    	product.setSubProducts(subProductService.findByProduct(product));
        model.addAttribute("project", product);
        return "mobile/project/projectDetail";
    }
}
