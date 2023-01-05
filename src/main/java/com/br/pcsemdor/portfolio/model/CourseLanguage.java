package com.br.pcsemdor.portfolio.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class CourseLanguage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCourseLanguage;

	private String description;
}
