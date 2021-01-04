package br.estudos.blankspringbootjsp.controller;

import br.estudos.blankspringbootjsp.dao.ClienteRepository;
import br.estudos.blankspringbootjsp.model.Cliente;
import br.estudos.blankspringbootjsp.service.ClienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

@RestController()
@RequestMapping("/cliente")

public class ClienteController {
    @Autowired
    ClienteService clienteService;

    @Autowired
    ClienteRepository clienteRepository;

    @GetMapping("/lista")
    @ResponseStatus(HttpStatus.OK)
    public List<Cliente> lista() {
        return clienteService.findAll();
    }

    @GetMapping("/{clienteId}")
    @ResponseStatus(HttpStatus.OK)
    public ResponseEntity<Cliente> busca(@PathVariable Integer clienteId) {
        //Optional traz uma lista de objetos ou null
        //Optional<Cliente> cliente = clienteRepository.findByCodigo(clienteId);
        Optional<Cliente> cliente = clienteRepository.findById(clienteId);

        // ResponseEntity - retornando o status de ok ou 404 quando nao encontrado
        if (cliente.isPresent() )  {
            return ResponseEntity.ok(cliente.get());
        }
        return ResponseEntity.notFound().build();
        //return clienteService.findClientes(id);
    }
    @PostMapping("/criar")
    @ResponseStatus(HttpStatus.CREATED)
    public Cliente cria(@RequestBody Cliente cliente) {
        // traz o objeto cliente
        cliente.setDate_created(LocalDate.now());
        return clienteRepository.save(cliente);
        //return clienteService.save(cliente);
    }



}
