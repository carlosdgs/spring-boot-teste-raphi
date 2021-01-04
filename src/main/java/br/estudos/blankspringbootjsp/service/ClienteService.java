package br.estudos.blankspringbootjsp.service;

import br.estudos.blankspringbootjsp.dao.ClienteRepository;
import br.estudos.blankspringbootjsp.model.Cliente;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class ClienteService {

	private final ClienteRepository clienteRepository;

	public ClienteService(ClienteRepository clienteRepository) {
		this.clienteRepository = clienteRepository;
	}
	
	public List<Cliente> findAll(){
		List<Cliente> clientes = new ArrayList<>();
		for(Cliente cliente : clienteRepository.findAll()){
			clientes.add(cliente);
		}
		return clientes;
	}
	
	public Cliente findClientes(int id){
		return clienteRepository.findById(id).orElse(null);
	}
	
	public void save(Cliente cliente){
		clienteRepository.save(cliente);
	}
	
	public void delete(int id){
		clienteRepository.deleteById(id);
	}
}
