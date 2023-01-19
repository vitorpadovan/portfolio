package com.br.pcsemdor.portfolio.model;

import java.sql.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

import lombok.Data;

@Entity
@Data
public class Job {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idJob;

	private Date startDate;

	private Date endDate;

	@Column(nullable = false, columnDefinition = "TEXT")
	private String description;

	@Column(nullable = false, length = 100)
	private String companyName;

	@Column(nullable = true, length = 300)
	private String urlCompanyName;

	@Column(nullable = false, length = 100)
	private String mainPosition;

	private String note;

	@OneToMany(mappedBy = "job", fetch = FetchType.LAZY)
	private List<EmploymentActivity> activityList;

	@ManyToMany
	@JoinTable(
			name = "JobTags", joinColumns = @JoinColumn(
					name = "idJob", referencedColumnName = "idJob"
			), inverseJoinColumns = @JoinColumn(name = "idSmartTag", referencedColumnName = "idSmartTag")
	)
	private List<SmartTags> tags;

	private String urlLogo;

	private boolean temp = false;

	private boolean outsourced = false;
}
