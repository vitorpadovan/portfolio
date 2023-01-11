package com.br.pcsemdor.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Course {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCourse;

	private String courseName;

	private String description;

	private String urlCurso;

	@Column(nullable = true)
	private Double porcentagemConcluida;

	@ManyToOne()
	@JoinColumn(name = "codLanguage")
	private CourseLanguage courseLanguage;

	@ManyToOne()
	@JoinColumn(name = "codSource")
	private CoursesSource courseSource;

	private String urlCertificate;
}
