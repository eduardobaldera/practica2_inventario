package com.example.practica2_inventario.data;

import com.example.practica2_inventario.modelos.Alquiler;
import com.example.practica2_inventario.modelos.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlquilerRepository extends JpaRepository<Alquiler, Long> {
    List<Alquiler> findAllByClienteOrderByFechaDesc(Cliente cliente);

    @Query("SELECT alquiler FROM Alquiler alquiler ORDER BY alquiler.fecha")
    List<Alquiler> alquileresOrdenados();

    Alquiler findById(long id);
}
