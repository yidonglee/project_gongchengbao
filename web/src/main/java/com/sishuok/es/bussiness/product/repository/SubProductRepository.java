package com.sishuok.es.bussiness.product.repository;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import com.sishuok.es.bussiness.product.entity.Product;
import com.sishuok.es.bussiness.product.entity.SubProduct;
import com.sishuok.es.common.repository.BaseRepository;

public interface SubProductRepository  extends BaseRepository<SubProduct, Long> {

	 @Query(value = "select o from SubProduct o where o.product=?1")
	 public  List<SubProduct>  findByProduct(Product product);
}
