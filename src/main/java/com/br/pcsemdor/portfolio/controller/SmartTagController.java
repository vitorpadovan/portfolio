package com.br.pcsemdor.portfolio.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.br.pcsemdor.portfolio.business.SmartTagBusiness;
import com.br.pcsemdor.portfolio.model.SmartTags;

@RestController
@RequestMapping("/api/smarttag")
public class SmartTagController {
	
	private SmartTagBusiness _smartTagBusiness;

	public SmartTagController(SmartTagBusiness _smartTagBusiness) {
		super();
		this._smartTagBusiness = _smartTagBusiness;
	}

	@GetMapping
	public List<SmartTags> GetTags(){
		return this._smartTagBusiness.GetAllSmartTags();
	}
}
