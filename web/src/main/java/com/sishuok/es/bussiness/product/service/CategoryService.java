/**
 * Copyright (c) 2005-2012 https://github.com/zhangkaitao
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sishuok.es.bussiness.product.service;

import com.sishuok.es.bussiness.product.entity.Category;
import com.sishuok.es.bussiness.product.repository.CategoryRepository;
import com.sishuok.es.common.plugin.serivce.BaseMovableService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * <p>User: Zhang Kaitao
 * <p>Date: 13-2-4 下午3:01
 * <p>Version: 1.0
 */
@Service
public class CategoryService extends BaseMovableService<Category, Long> {

}
