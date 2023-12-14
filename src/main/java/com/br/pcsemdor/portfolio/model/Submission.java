package com.br.pcsemdor.portfolio.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;

import lombok.Data;

import java.sql.Date;
import java.util.List;
import java.util.UUID;


@Entity
@Data
public class Submission {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idSubmission;
	
	@Column(nullable =  false)
	private String companyName;
	
	@Column(nullable =  false, unique = true)
	private String submissionLink;
	
	private UUID uuid;
	
	private Date submissionDate;
	
	@Column(columnDefinition = "boolean default false")
	private boolean needRegistration = false;
	
	@Column(columnDefinition = "boolean default false")
	private boolean registrationComplete = false;
	
	@ManyToMany
	@JoinTable(
			name = "SubmissionTags", joinColumns = @JoinColumn(
					name = "idSubmission", referencedColumnName = "idSubmission"
			), inverseJoinColumns = @JoinColumn(name = "idSmartTag", referencedColumnName = "idSmartTag")
	)
	private List<SmartTags> tags;
}
