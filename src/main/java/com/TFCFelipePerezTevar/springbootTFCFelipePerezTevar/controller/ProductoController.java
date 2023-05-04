package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Producto;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/producto")
@CrossOrigin(origins = "*")
public class ProductoController {

    @Autowired
    ProductoService productoService;

    @GetMapping("/lista")
    public ResponseEntity<List<Producto>> list(){
        List<Producto> list = productoService.list();
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
