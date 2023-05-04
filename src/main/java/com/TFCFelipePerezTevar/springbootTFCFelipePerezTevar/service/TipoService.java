package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.TipoRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Tipo;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class TipoService {

    @Autowired
    TipoRepository tipoRepository;

    public List<Tipo> list(){ return tipoRepository.findAll();}

}
