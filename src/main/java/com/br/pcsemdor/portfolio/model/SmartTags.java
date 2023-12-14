package com.br.pcsemdor.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import lombok.Data;

@Entity
@Data
@Table(uniqueConstraints = @UniqueConstraint(columnNames = { "name" }, name = "uk_name"))
public class SmartTags {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idSmartTag;

	@Column(nullable = false)
	private String name;
	
	@Column(unique = true)
	private String image;
}
