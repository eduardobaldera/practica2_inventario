package com.example.practica2_inventario.data;

import com.example.practica2_inventario.modelos.Equipo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EquipoRepository extends JpaRepository<Equipo, Long> {
    Equipo findById(long id);
}
