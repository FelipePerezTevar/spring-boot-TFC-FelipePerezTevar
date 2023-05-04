package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Tipo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@Repository
@CrossOrigin
public interface TipoRepository extends JpaRepository<Tipo, Long>{
}
