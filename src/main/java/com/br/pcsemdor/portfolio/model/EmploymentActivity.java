package com.br.pcsemdor.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;

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
