package com.br.pcsemdor.portfolio.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import lombok.Data;

@Entity
@Data
public class CourseLanguage {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCourseLanguage;

	private String description;
}
