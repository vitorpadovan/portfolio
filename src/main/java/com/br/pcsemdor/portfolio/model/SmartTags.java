package com.br.pcsemdor.portfolio.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

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
}
