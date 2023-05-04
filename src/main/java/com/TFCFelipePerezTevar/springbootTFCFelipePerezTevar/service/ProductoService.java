package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.ProductoRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Producto;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ProductoService {

    @Autowired
    ProductoRepository productoRepository;

    public List<Producto> list(){ return productoRepository.findAll();}

}
