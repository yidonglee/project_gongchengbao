package com.sishuok.es.bussiness.product.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import com.sishuok.es.common.entity.BaseEntity;
import com.sishuok.es.sys.user.entity.User;

@Entity
@Table(name = "subproduct")
public class SubProduct extends BaseEntity<Long> {
	 @OneToOne(optional = false)
	 @Fetch(FetchMode.SELECT)
	 private Product product;
	 
	 @OneToOne(optional = true)
	 @Fetch(FetchMode.SELECT)
	 private User user;
	 
	 @Column(name = "content")
	 private String content;

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	 
	 
	 
}
