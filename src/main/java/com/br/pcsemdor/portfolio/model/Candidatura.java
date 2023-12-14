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
public class Candidatura {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int idCandidatura;
	
	@Column(nullable =  false)
	private String nomeDaEmpresa;
	
	@Column(nullable =  false, unique = true)
	private String linkVaga;
	
	private UUID uuid;
	
	private Date dataCandidatura;
	
	@ManyToMany
	@JoinTable(
			name = "JobSubmission", joinColumns = @JoinColumn(
					name = "idCandidatura", referencedColumnName = "idCandidatura"
			), inverseJoinColumns = @JoinColumn(name = "idSmartTag", referencedColumnName = "idSmartTag")
	)
	private List<SmartTags> tags;
}
