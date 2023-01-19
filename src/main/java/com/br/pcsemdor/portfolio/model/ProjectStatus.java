package com.br.pcsemdor.portfolio.model;

public enum ProjectStatus {

	NaoIniciado(0), Iniciado(1), EmAndamento(2), Concluido(3), Depreciado(4);


	private final int value;


	private ProjectStatus(
			int value) {
		this.value = value;
	}

	public int getValue() {
		return value;
	}
}
