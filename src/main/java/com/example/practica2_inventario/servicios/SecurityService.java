package com.example.practica2_inventario.servicios;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}