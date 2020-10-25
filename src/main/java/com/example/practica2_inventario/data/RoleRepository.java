package com.example.practica2_inventario.data;

import com.example.practica2_inventario.modelos.Rol;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Rol, Long>{ }