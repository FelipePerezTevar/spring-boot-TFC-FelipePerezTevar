package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Imagen;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;

@RepositoryRestResource
@CrossOrigin
public interface ImagenRepository extends JpaRepository<Imagen, Long>{
}
