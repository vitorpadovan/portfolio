package com.br.pcsemdor.portfolio.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.pcsemdor.portfolio.business.ProjectBusiness;
import com.br.pcsemdor.portfolio.model.Project;

@RestController
@RequestMapping("/api/projeto")
public class ProjectController {

	private ProjectBusiness _business;


	public ProjectController(
			ProjectBusiness _business) {
		super();
		this._business = _business;
	}

	@GetMapping
	public List<Project> getProject() {
		return this._business.getProjects();
	}
}
