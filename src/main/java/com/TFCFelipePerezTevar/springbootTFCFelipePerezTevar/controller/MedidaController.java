package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Medida;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.MedidaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/medida")
@CrossOrigin(origins = "*")
public class MedidaController {

    @Autowired
    MedidaService medidaService;

    @GetMapping("/lista")
    public ResponseEntity<List<Medida>> list(){
        List<Medida> list = medidaService.list();
        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
