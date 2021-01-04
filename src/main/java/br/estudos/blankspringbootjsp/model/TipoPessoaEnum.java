package br.estudos.blankspringbootjsp.model;

import br.estudos.blankspringbootjsp.exception.NotFoundException;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.Arrays;

@AllArgsConstructor
@Getter
public enum TipoPessoaEnum {
	CLIENTE("C"),
	FORNECEDOR("F"),
	FUNCIONARIO("E");
	
	private String value;

	public static TipoPessoaEnum fromValue(String value) {
	    return Arrays.stream(TipoPessoaEnum.values())
				.filter(tipoPessoa -> tipoPessoa.value.equals(value))
	            .findAny()
	            .orElseThrow(() -> new NotFoundException("Tipo de conta não encontrado."));
	}
}
	
	

