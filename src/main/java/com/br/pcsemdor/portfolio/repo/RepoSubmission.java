package com.br.pcsemdor.portfolio.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.br.pcsemdor.portfolio.model.Submission;

@Repository
public interface RepoSubmission extends JpaRepository<Submission, Integer>{
	
}
