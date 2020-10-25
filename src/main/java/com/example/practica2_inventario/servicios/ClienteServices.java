package com.example.practica2_inventario.servicios;

import com.example.practica2_inventario.data.ClienteRepository;
import com.example.practica2_inventario.modelos.Cliente;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ClienteServices {

    @Autowired
    private ClienteRepository clienteRepository;

    @Transactional
    public Cliente crearCliente(Cliente cliente) {
        clienteRepository.save(cliente);
        return cliente;
    }

    public List<Cliente> getListadoDeClientes() {
        return clienteRepository.findAll();
    }

    public void eliminarCliente(long id){
        clienteRepository.deleteById(id);
    }

    public Cliente getClientePorID(long id){
        return clienteRepository.findById(id);
    }
}
