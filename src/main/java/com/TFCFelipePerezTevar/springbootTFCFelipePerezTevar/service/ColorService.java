package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.ColorRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Color;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
@Transactional
public class ColorService {

    @Autowired
    ColorRepository colorRepository;

    public List<Color> list(){return colorRepository.findAll();}

}
