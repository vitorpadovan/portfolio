package com.br.pcsemdor.portfolio.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.pcsemdor.portfolio.business.SubmissionBusiness;
import com.br.pcsemdor.portfolio.model.Submission;

@RestController
@RequestMapping("/api/candidatura")
public class SubmissionController {
	private SubmissionBusiness _submissionBusiness;

	public SubmissionController(SubmissionBusiness _submissionBusiness) {
		super();
		this._submissionBusiness = _submissionBusiness;
	}
	
	@GetMapping
	public List<Submission> GetSubmission(){
		return _submissionBusiness.GetAllSubmission();
	}

}
