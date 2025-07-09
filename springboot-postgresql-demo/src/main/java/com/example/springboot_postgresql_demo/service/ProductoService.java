package com.example.springboot_postgresql_demo.service;

import com.example.springboot_postgresql_demo.entity.Producto;
import com.example.springboot_postgresql_demo.repository.ProductoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class ProductoService {

    @Autowired
    private ProductoRepository repo;

    public List<Producto> listar() {
        return repo.findAll();
    }

    public Optional<Producto> buscarPorId(Integer id) {
        return repo.findById(id);
    }

    public Producto guardar(Producto p) {
        return repo.save(p);
    }

    public void eliminar(Integer id) {
        repo.deleteById(id);
    }
}
