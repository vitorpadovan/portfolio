package com.br.pcsemdor.portfolio.business;

import java.util.List;

import org.springframework.stereotype.Service;

import com.br.pcsemdor.portfolio.model.SmartTags;
import com.br.pcsemdor.portfolio.repo.RepoSmartTag;

@Service
public class SmartTagBusiness {

	private RepoSmartTag _RepoSmartTag;

	public SmartTagBusiness(RepoSmartTag _RepoSmartTag) {
		super();
		this._RepoSmartTag = _RepoSmartTag;
	}
	
	public List<SmartTags> GetAllSmartTags(){
		return this._RepoSmartTag.findAll();
	}
}
