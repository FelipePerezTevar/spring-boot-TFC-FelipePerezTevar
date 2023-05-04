package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Modelo;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.ModeloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/modelo")
@CrossOrigin(origins = "*")
public class ModeloController {

    @Autowired
    ModeloService modeloService;

    @GetMapping("/lista")
    public ResponseEntity<List<Modelo>> list(){
        List<Modelo> list = modeloService.list();

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
