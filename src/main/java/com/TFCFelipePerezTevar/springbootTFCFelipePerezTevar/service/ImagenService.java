package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.ImagenRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Imagen;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ImagenService {

    @Autowired
    ImagenRepository imagenRepository;

    public List<Imagen> list(){return imagenRepository.findAll();}

}
