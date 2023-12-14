package com.br.pcsemdor.portfolio.model;

import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.JoinTable;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;

import lombok.Data;

@Entity
@Data
@Table(uniqueConstraints = @UniqueConstraint(columnNames = { "courseName" }, name = "uk_courseName"))
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCourse;

	private String courseName;

	private String description;

	private String urlCurso;

	private double porcentagemConcluida;

	@ManyToOne()
	@JoinColumn(name = "codLanguage")
	private CourseLanguage courseLanguage;

	@ManyToOne()
	@JoinColumn(name = "codSource")
	private CoursesSource courseSource;

	private String urlCertificate;

	@ManyToMany
	@JoinTable(
			name = "CourseTags", joinColumns = @JoinColumn(
					name = "idCourse", referencedColumnName = "idCourse"
			), inverseJoinColumns = @JoinColumn(name = "idSmartTag", referencedColumnName = "idSmartTag")
	)
	private List<SmartTags> tags;
}
