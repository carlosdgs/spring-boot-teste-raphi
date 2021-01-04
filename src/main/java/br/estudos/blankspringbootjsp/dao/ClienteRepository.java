package br.estudos.blankspringbootjsp.dao;

import br.estudos.blankspringbootjsp.model.Cliente;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends CrudRepository<Cliente, Integer>{
	
//	@Query(value = "select max(codigo)+1 from Pessoa where tipoPessoa = :tipoPessoa")
//	Cliente proximoNumeroCliente(@Param("tipoPessoa") String tipoPessoa);
//
	//@Query(value = "select codigo, tipoPessoa,nomePessoa, nomeFantasia,Segmento   from Cliente where tipoPessoa = 'C' ")
	//List<Cliente> buscarListaCliente();

	Cliente findByCodigo(Integer codigo);

	//List<Cliente> findByNome( String nome);

	//List<Cliente> findByNomeContaining( String nome);


}
