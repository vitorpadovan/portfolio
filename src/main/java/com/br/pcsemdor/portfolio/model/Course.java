package com.br.pcsemdor.portfolio.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

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
