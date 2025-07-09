package com.example.springboot_postgresql_demo.repository;

import com.example.springboot_postgresql_demo.entity.Producto;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductoRepository extends JpaRepository<Producto, Integer> {
}
