package com.sishuok.es.bussiness.product.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sishuok.es.bussiness.product.entity.SubProduct;
import com.sishuok.es.bussiness.product.service.ProductService;
import com.sishuok.es.common.Constants;
import com.sishuok.es.common.entity.enums.BooleanEnum;
import com.sishuok.es.common.web.controller.BaseCRUDController;
import com.sishuok.es.sys.user.entity.User;
import com.sishuok.es.sys.user.web.bind.annotation.CurrentUser;

@Controller
@RequestMapping(value = "/bussiness/product/subproduct")
public class SubProductController extends BaseCRUDController<SubProduct, Long> {
	@Autowired
	private ProductService productService;
	
	public SubProductController() {
		setResourceIdentity("bussiness:product");
	}

	@Override
	protected void setCommonData(Model model) {
		model.addAttribute("booleanList", BooleanEnum.values());
	}
	
    @RequestMapping(value = "create1", method = RequestMethod.GET)
    public String showCreateForm(Model model,@RequestParam(value = "pid")Long pid,@CurrentUser User user) {

        if (permissionList != null) {
            this.permissionList.assertHasCreatePermission();
        }
        setCommonData(model);
        model.addAttribute("p",  productService.findOne(pid));
        model.addAttribute("user", user);
        model.addAttribute(Constants.OP_NAME, "新建");
        if (!model.containsAttribute("m")) {
            model.addAttribute("m", newModel());
        }
        return viewName("editForm");
    }
    @RequestMapping(value = "create2", method = RequestMethod.POST)
    public String create(
            Model model, @Valid @ModelAttribute("m")SubProduct  m, BindingResult result,
            RedirectAttributes redirectAttributes) {

        if (permissionList != null) {
            this.permissionList.assertHasCreatePermission();
        }

        if (hasError(m, result)) {
            return showCreateForm(model);
        }
        baseService.save(m);
        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "添加成功");
        return redirectToUrl("/bussiness/product/product/"+m.getProduct().getId());
    }

}
