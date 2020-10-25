package com.example.practica2_inventario;

import com.example.practica2_inventario.servicios.StorageProperties;
import com.example.practica2_inventario.servicios.StorageService;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@ComponentScan
@EnableConfigurationProperties(StorageProperties.class)
public class Practica2InventarioApplication {
    public static void main(String[] args) {
        SpringApplication.run(Practica2InventarioApplication.class, args);
    }

    @Bean
    CommandLineRunner init(StorageService storageService) {
        return (args) -> {
            storageService.deleteAll();
            storageService.init();
        };
    }

}
