package com.br.pcsemdor.portfolio.business;

import java.util.List;

import org.springframework.stereotype.Service;

import com.br.pcsemdor.portfolio.model.Submission;
import com.br.pcsemdor.portfolio.repo.RepoSubmission;

@Service
public class SubmissionBusiness {
	
	private RepoSubmission _repoRepoSubmission;

	public SubmissionBusiness(RepoSubmission _repoRepoSubmission) {
		super();
		this._repoRepoSubmission = _repoRepoSubmission;
	}
	
	public List<Submission> GetAllSubmission(){
		return _repoRepoSubmission.findAll();
	}

}
