package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.controller;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Tipo;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service.TipoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/tipo")
@CrossOrigin(origins = "*")
public class TipoController {

    @Autowired
    TipoService tipoService;

    @GetMapping("/lista")
    public ResponseEntity<List<Tipo>> list(){
        List<Tipo> list = tipoService.list();

        return new ResponseEntity<>(list, HttpStatus.OK);
    }

}
