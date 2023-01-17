package com.br.pcsemdor.portfolio.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.br.pcsemdor.portfolio.model.Project;

@Repository
public interface ProjectRepo extends JpaRepository<Project, Integer> {
}
