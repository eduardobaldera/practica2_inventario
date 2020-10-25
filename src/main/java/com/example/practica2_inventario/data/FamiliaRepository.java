package com.example.practica2_inventario.data;

import com.example.practica2_inventario.modelos.Familia;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface FamiliaRepository extends JpaRepository<Familia, Long> { Familia findById(long id); }