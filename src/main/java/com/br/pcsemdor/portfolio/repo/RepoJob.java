package com.br.pcsemdor.portfolio.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.br.pcsemdor.portfolio.model.Job;

@Repository
public interface RepoJob extends JpaRepository<Job, Integer> {
	public List<Job> findAllByOrderByStartDateAsc();
}
