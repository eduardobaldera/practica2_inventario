package com.example.practica2_inventario.data;

import com.example.practica2_inventario.modelos.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ClienteRepository extends JpaRepository<Cliente, Long> {

    Cliente findById(long id);
}
