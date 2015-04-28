package com.sishuok.es.bussiness.product.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.sishuok.es.bussiness.product.entity.Product;
import com.sishuok.es.bussiness.product.entity.SubProduct;
import com.sishuok.es.bussiness.product.repository.SubProductRepository;
import com.sishuok.es.common.service.BaseService;
@Service
public class SubProductService extends
		BaseService<com.sishuok.es.bussiness.product.entity.SubProduct, Long> {
	
	private SubProductRepository getSubProductRepository()
	{
		return (SubProductRepository)baseRepository;
	}
	public List<SubProduct>  findByProduct(Product product)
	{
		 return getSubProductRepository().findByProduct(product);
	}
}

