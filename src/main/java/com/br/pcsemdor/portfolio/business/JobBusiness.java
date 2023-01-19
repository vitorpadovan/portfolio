package com.br.pcsemdor.portfolio.business;

import java.util.List;

import org.springframework.stereotype.Service;

import com.br.pcsemdor.portfolio.model.Job;
import com.br.pcsemdor.portfolio.repo.RepoJob;

@Service
public class JobBusiness {

	private RepoJob _repo;


	public JobBusiness(
			RepoJob _repo) {
		super();
		this._repo = _repo;
	}

	public List<Job> getJobs() {
		return _repo.findAll();
	}
}
