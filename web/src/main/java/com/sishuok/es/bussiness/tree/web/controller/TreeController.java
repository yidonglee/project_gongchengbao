/**
 * Copyright (c) 2005-2012 https://github.com/zhangkaitao
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sishuok.es.bussiness.tree.web.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import com.google.common.collect.Lists;
import com.sishuok.es.bussiness.tree.entity.Tree;
import com.sishuok.es.common.Constants;
import com.sishuok.es.common.entity.search.SearchOperator;
import com.sishuok.es.common.entity.search.Searchable;
import com.sishuok.es.common.plugin.web.controller.BaseTreeableController;
import com.sishuok.es.common.plugin.web.controller.entity.ZTree;
import com.sishuok.es.common.web.bind.annotation.PageableDefaults;
import com.sun.xml.internal.bind.v2.model.core.ID;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 13-1-28 下午4:29
 * <p>Version: 1.0
 */
@Controller
@RequestMapping(value = "/bussiness/tree")
public class TreeController extends BaseTreeableController<Tree, Long> {

    public TreeController() {
        setResourceIdentity("bussiness:tree");
    }

    @RequestMapping(value = "/changeStatus/{newStatus}")
    public String changeStatus(
            HttpServletRequest request,
            @PathVariable("newStatus") Boolean newStatus,
            @RequestParam("ids") Long[] ids,
            RedirectAttributes redirectAttributes
    ) {


        this.permissionList.assertHasUpdatePermission();

        for (Long id : ids) {
            Tree tree = baseService.findOne(id);
            tree.setShow(newStatus);
            baseService.update(tree);
        }
        redirectAttributes.addFlashAttribute(Constants.MESSAGE, "操作成功！");

        return "redirect:" + request.getAttribute(Constants.BACK_URL);
    }
    @RequestMapping(value = "/children/{parentId}",method = RequestMethod.GET, produces = "application/json")
    @PageableDefaults(sort = {"parentId=asc", "weight=asc"})
    @ResponseBody
    public Object listChilden(
            HttpServletRequest request,
            @PathVariable("parentId") Tree parent,
            Searchable searchable, Model model) throws UnsupportedEncodingException {

        if (permissionList != null) {
            permissionList.assertHasViewPermission();
        }
        if (parent != null) {
            searchable.addSearchFilter("parentId", SearchOperator.eq, parent.getId());
        }
//        model.addAttribute("list", baseService.findAllWithSort(searchable));
        List<Tree> list = baseService.findAllWithSort(searchable);
        return  list;
    }
    @RequestMapping(value = "selectTree", method = RequestMethod.GET, produces = "application/json")
    @PageableDefaults(sort = {"parentIds=asc", "weight=asc"})
    @ResponseBody
    public Object selectTree(
            HttpServletRequest request,
            @RequestParam(value = "searchName", required = false) String searchName,
            @RequestParam(value = "async", required = false, defaultValue = "false") boolean async,
            Searchable searchable, Model model) {

        if (permissionList != null) {
            permissionList.assertHasViewPermission();
        }

        List<Tree> models = null;

        if (!StringUtils.isEmpty(searchName)) {
            searchable.addSearchParam("name_like", searchName);
            models = baseService.findAllByName(searchable, null);
            if (!async) { 
                searchable.removeSearchFilter("name_like");
                List<Tree> children = baseService.findChildren(models, searchable);
                models.removeAll(children);
                models.addAll(children);
            } else { 

            }
        } else {
            if (!async) {  
                models = baseService.findAllWithSort(searchable);
            } else {  
                models = baseService.findRootAndChild(searchable);
            }
        }

        return convertToZtreeList(
                request.getContextPath(),
                models,
                async,
                true);
    }
    private List<ZTree<ID>> convertToZtreeList(String contextPath, List<Tree> models, boolean async, boolean onlySelectLeaf) {
        List<ZTree<ID>> zTrees = Lists.newArrayList();

        if (models == null || models.isEmpty()) {
            return zTrees;
        }

        for (Tree m : models) {
            ZTree zTree = convertTo1Ztree(m, !async, onlySelectLeaf);
            zTrees.add(zTree);
        }
        return zTrees;
    }

    private ZTree convertTo1Ztree(Tree tree, boolean open, boolean onlyCheckLeaf) {
        ZTree<Long> zTree = new ZTree<Long>();
        zTree.setId( tree.getId());
        zTree.setpId(tree.getParentId());
        zTree.setName(tree.getName());
        zTree.setIconSkin(tree.getIcon());
        zTree.setOpen(open);
        zTree.setRoot(tree.isRoot());
        zTree.setIsParent(tree.isHasChildren());

        if (onlyCheckLeaf && zTree.isIsParent()) {
            zTree.setNocheck(true);
        } else {
            zTree.setNocheck(false);
        }
        return zTree;
    }


}
