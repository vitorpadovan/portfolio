package com.br.pcsemdor.portfolio.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;

import lombok.AccessLevel;
import lombok.Data;
import lombok.Getter;

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

	private ProjectStatus status = ProjectStatus.NaoIniciado;

	@Getter(AccessLevel.NONE)
	@jakarta.persistence.Transient
	private int codStatus;


	public int getCodStatus() {
		return status.getValue();
	}
}
