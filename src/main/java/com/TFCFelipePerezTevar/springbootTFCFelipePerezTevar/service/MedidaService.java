package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.MedidaRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Medida;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class MedidaService {

    @Autowired
    MedidaRepository medidaRepository;

    public List<Medida> list(){return medidaRepository.findAll();}

}
