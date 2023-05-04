package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Imagen;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.ImagenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/imagen")
@CrossOrigin(origins = "*")
public class ImagenController {

    @Autowired
    ImagenService imagenService;

    @GetMapping("/lista")
    public ResponseEntity<List<Imagen>> list(){
        List<Imagen> list = imagenService.list();

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
