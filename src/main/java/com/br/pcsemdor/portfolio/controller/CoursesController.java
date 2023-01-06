package com.br.pcsemdor.portfolio.controller;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.pcsemdor.portfolio.model.Course;
import com.br.pcsemdor.portfolio.repo.RepoCourses;

@RestController
@CrossOrigin
@RequestMapping("/api/curso")
public class CoursesController {

	RepoCourses repo;


	public CoursesController(
			RepoCourses repo) {
		super();
		this.repo = repo;
	}

	@GetMapping
	public ResponseEntity<List<Course>> getAllCourses() {
		return ResponseEntity.ok(repo.findAll());
	}
}
