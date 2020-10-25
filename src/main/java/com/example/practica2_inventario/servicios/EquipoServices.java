package com.example.practica2_inventario.servicios;

import com.example.practica2_inventario.data.EquipoRepository;
import com.example.practica2_inventario.modelos.Equipo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class EquipoServices {
    @Autowired
    EquipoRepository equipoRepository;

    @Transactional
    public Equipo crearEquipo(Equipo equipo) {
        return equipoRepository.save(equipo);
    }

    public List<Equipo> listadoEquipos() {
        return equipoRepository.findAll();
    }

    public void eliminarEquipo(long id){
        equipoRepository.deleteById(id);
    }

    public Equipo getEquipoPorID(long id){
        return equipoRepository.findById(id);
    }
}



