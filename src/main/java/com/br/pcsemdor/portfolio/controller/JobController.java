package com.br.pcsemdor.portfolio.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.pcsemdor.portfolio.business.JobBusiness;
import com.br.pcsemdor.portfolio.model.Job;

@RestController
@RequestMapping("/api/trabalho")
public class JobController {

	private JobBusiness _business;


	public JobController(
			JobBusiness _business) {
		super();
		this._business = _business;
	}

	@GetMapping
	public List<Job> getJobs() {
		return _business.getJobs();
	}
}
