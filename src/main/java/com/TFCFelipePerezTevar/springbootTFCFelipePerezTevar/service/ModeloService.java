package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.ModeloRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Modelo;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ModeloService {

    @Autowired
    ModeloRepository modeloRepository;

    public List<Modelo> list(){ return modeloRepository.findAll();}

}
