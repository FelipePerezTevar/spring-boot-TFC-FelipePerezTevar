package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Modelo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@Repository
@CrossOrigin
public interface ModeloRepository extends JpaRepository<Modelo, Long>{
}
