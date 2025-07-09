package com.example.springboot_postgresql_demo.controller;

import com.example.springboot_postgresql_demo.entity.Producto;
import com.example.springboot_postgresql_demo.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/productos")
public class ProductoController {

    @Autowired
    private ProductoService servicio;

    // GET: Listar todos los productos
    @GetMapping
    public List<Producto> listar() {
        return servicio.listar();
    }

    // GET: Buscar producto por ID
    @GetMapping("/{id}")
    public ResponseEntity<Producto> buscarPorId(@PathVariable Integer id) {
        return servicio.buscarPorId(id)
                .map(ResponseEntity::ok)
                .orElse(ResponseEntity.notFound().build());
    }

    // POST: Crear nuevo producto
    @PostMapping
    public ResponseEntity<Producto> crear(@RequestBody Producto nuevo) {
        Producto guardado = servicio.guardar(nuevo);
        return ResponseEntity.ok(guardado);
    }

    // PUT: Actualizar producto existente por ID
    @PutMapping("/{id}")
    public ResponseEntity<Producto> actualizar(@PathVariable Integer id, @RequestBody Producto actualizado) {
        return servicio.buscarPorId(id).map(p -> {
            actualizado.setIdProducto(id);
            return ResponseEntity.ok(servicio.guardar(actualizado));
        }).orElse(ResponseEntity.notFound().build());
    }

    // DELETE: Eliminar producto por ID
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> eliminar(@PathVariable Integer id) {
        return servicio.buscarPorId(id).map(p -> {
            servicio.eliminar(id);
            return ResponseEntity.status(204).<Void>build();
        }).orElse(ResponseEntity.notFound().build());
    }
}
