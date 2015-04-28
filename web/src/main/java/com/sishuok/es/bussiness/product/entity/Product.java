/**
 * 
 *
 *Licensed under the Apache License, Version 2.0 (the "License");
 */
package com.sishuok.es.bussiness.product.entity;

import com.sishuok.es.bussiness.tree.entity.Tree;
import com.sishuok.es.common.entity.BaseEntity;
import com.sishuok.es.sys.user.entity.User;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;
import org.hibernate.annotations.Formula;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

import java.util.Date;
import java.util.List;
import java.util.Set;

/**
 * 产品
 * <p>User: 
 * <p>Date: 13-2-19 上午9:00
 * <p>Version: 1.0
 */
@Entity
@Table(name = "product",uniqueConstraints = {@UniqueConstraint(columnNames={"zcbh"})} )
public class Product extends BaseEntity<Long> {
	@OneToOne(optional = true)
	@Fetch(FetchMode.SELECT)
	private Tree tree;
	
    @OneToOne(optional = true)
    @Fetch(FetchMode.SELECT)
    private Category category;

    @NotNull(message = "not.null")
    @Column(name = "name")
    private String name;
    //注册编号
    @Column(name = "zcbh")
    private String zcbh;
    //项目描述
    @Column(name = "xmms")
    private String xmms;
    //项目地址
    @Column(name = "address")
    private String address;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "beginDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date beginDate;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @Column(name = "endDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date endDate;

    @Column(name = "is_show")
    private Boolean show;
    
    @Column(name = "user_id")
    private Long userId;
    @Transient
    private User user;
    @Transient
    private List<SubProduct>  subProducts;
    
    public List<SubProduct> getSubProducts() {
		return subProducts;
	}

	public void setSubProducts(List<SubProduct> subProducts) {
		this.subProducts = subProducts;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(Date beginDate) {
        this.beginDate = beginDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Boolean getShow() {
        return show;
    }

    public void setShow(Boolean show) {
        this.show = show;
    }

	public String getZcbh() {
		return zcbh;
	}

	public void setZcbh(String zcbh) {
		this.zcbh = zcbh;
	}

	public String getXmms() {
		return xmms;
	}

	public void setXmms(String xmms) {
		this.xmms = xmms;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Tree getTree() {
		return tree;
	}

	public void setTree(Tree tree) {
		this.tree = tree;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

    
}
