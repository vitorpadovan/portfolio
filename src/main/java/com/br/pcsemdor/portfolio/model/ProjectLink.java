package com.br.pcsemdor.portfolio.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Data
public class ProjectLink {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idLink;

	private String url;

	@Column(length = 50)
	private String title;

	private String description;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "idProject")
	private Project project;

	private boolean isPrivate = false;
}
