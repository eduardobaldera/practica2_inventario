package com.example.practica2_inventario.servicios;

import com.example.practica2_inventario.data.AlquilerRepository;
import com.example.practica2_inventario.modelos.Alquiler;
import com.example.practica2_inventario.modelos.Cliente;
import javassist.NotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class AlquilerServices {
    @Autowired
    AlquilerRepository alquilerRepository;

    @Transactional
    public Alquiler crearAlquiler(Alquiler alquiler) {
        return alquilerRepository.save(alquiler);
    }

    public List<Alquiler> listadoAlquiler() {
        return alquilerRepository.findAll();
    }

    public List<Alquiler> listadoAlquilerOrdenado() {
        return alquilerRepository.alquileresOrdenados();
    }

    public Alquiler getAlquilerPorID(long id){
        return alquilerRepository.findById(id);
    }

    public List<Alquiler> historialAlquiler(Cliente cliente) {
        return alquilerRepository.findAllByClienteOrderByFechaDesc(cliente);
    }
}
