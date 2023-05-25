package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Productocolor;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.ProductoColorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/productocolor")
@CrossOrigin(origins = "*")
public class ProductoColorController {

    @Autowired
    ProductoColorService productoColorService;

    @GetMapping("/lista")
    public ResponseEntity<List<Productocolor>> list(){
        List<Productocolor> list = productoColorService.list();

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

    @GetMapping("/producto/{id}")
    public ResponseEntity<List<Productocolor>> producto(@PathVariable("id") int id){
        List<Productocolor> list = productoColorService.listProducto(id);

        return new ResponseEntity<>(list, HttpStatus.OK);
    }


    @GetMapping("/filtro")
    public ResponseEntity<List<Productocolor>> listFiltro2(@RequestParam("diametro") Double diametro, @RequestParam("alto")Double alto,
                                                           @RequestParam("ancho") Double ancho, @RequestParam("tipo") String tipo, @RequestParam("modelo") String modelo){

        if(diametro == 0){
            diametro = null;
        }

        if(alto == 0){
            alto = null;
        }

        if(ancho == 0){
            ancho = null;
        }

        if(tipo.equals("tipo")){
            tipo = null;
        }

        if(modelo.equals("modelo")){
            modelo = null;
        }

        List<Productocolor> list = productoColorService.findByProducto2(diametro, alto, ancho, tipo, modelo);

        return new ResponseEntity<>(list, HttpStatus.OK);

    }

}
