package com.br.pcsemdor.portfolio.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class Project {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idProject;

	@Column(length = 150)
	private String title;

	@Column(columnDefinition = "TEXT")
	private String description;

	@OneToMany(mappedBy = "project", fetch = FetchType.LAZY)
	private List<ProjectLink> links;

	@ManyToMany
	@JoinTable(
			name = "ProjectTags", joinColumns = @JoinColumn(
					name = "idProject", referencedColumnName = "idProject"
			), inverseJoinColumns = @JoinColumn(name = "idSmartTag", referencedColumnName = "idSmartTag")
	)
	private List<SmartTags> tags;
}
