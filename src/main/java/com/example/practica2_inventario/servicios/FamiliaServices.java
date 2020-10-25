package com.example.practica2_inventario.servicios;

import com.example.practica2_inventario.data.FamiliaRepository;
import com.example.practica2_inventario.modelos.Familia;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class FamiliaServices {
    @Autowired
    FamiliaRepository familiaRepository;

    @Transactional
    public Familia crearFamilia(Familia familia) {
        return familiaRepository.save(familia);
    }

    public List<Familia> listadoFamilias() {
        return familiaRepository.findAll();
    }

    public Familia buscarPorId(long id) {
        return familiaRepository.findById(id);
    }

    public void eliminarFamilia(long id){
        familiaRepository.deleteById(id);
    }

    public Familia getFamiliaPorID(long id){
        return familiaRepository.findById(id);
    }
}
