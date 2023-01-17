package com.br.pcsemdor.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

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
