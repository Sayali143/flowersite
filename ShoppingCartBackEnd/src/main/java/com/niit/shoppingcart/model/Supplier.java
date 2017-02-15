package com.niit.shoppingcart.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name="Supplier")
@Component
public class Supplier implements Serializable {
	
	@Id
	@Column(name = "id")
	public String id;
	
	@Column(name = "name")
	public String name;
	
	@Column(name = "address")
	public String description;
	
	@OneToMany(mappedBy="supplier", cascade=CascadeType.ALL,fetch=FetchType.EAGER)
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
