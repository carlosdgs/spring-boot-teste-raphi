package br.estudos.blankspringbootjsp.model;


import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.Email;
import java.io.Serializable;
import java.time.LocalDate;

@Data
@Entity
public class Cliente<id> implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	protected Integer codigo ;
	@Column(nullable=false, length=50)
	protected String nomePessoa;
	@Enumerated(EnumType.STRING)
	protected TipoPessoaEnum tipoPessoa;
	@Column( length=50)
	protected String nomeFantasia;
	protected LocalDate date_created;
	protected LocalDate date_updated;
	@Column( length=70)
	protected String endereco;
	@Column( length=8)
	protected String cep;
	@Column( length=35)
	protected String cidade;
	@Column( length=35)
	protected String bairro;
	@Column( length=35)
	protected String email;


}
