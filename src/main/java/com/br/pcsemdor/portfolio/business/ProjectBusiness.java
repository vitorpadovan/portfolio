package com.br.pcsemdor.portfolio.business;

import java.util.List;

import org.springframework.stereotype.Service;

import com.br.pcsemdor.portfolio.model.Project;
import com.br.pcsemdor.portfolio.repo.ProjectRepo;

@Service
public class ProjectBusiness {

	private ProjectRepo _repo;


	public ProjectBusiness(
			ProjectRepo _repo) {
		super();
		this._repo = _repo;
	}

	public List<Project> getProjects() {
		return _repo.findAll();
	}
}
