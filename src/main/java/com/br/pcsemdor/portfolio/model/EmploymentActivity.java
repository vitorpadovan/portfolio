package com.br.pcsemdor.portfolio.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.SequenceGenerator;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Entity
@Data
public class EmploymentActivity {

	@Id
	@GeneratedValue(generator = "employment_activity_seq")
	@SequenceGenerator(name = "employment_activity_seq", sequenceName = "employment_activity_seq", allocationSize = 1)
	private int idEmploymentActivity;

	@JsonIgnore
	@ManyToOne
	@JoinColumn(name = "idJob")
	private Job job;

	private String title;

	@Column(columnDefinition = "TEXT")
	private String description;
}
