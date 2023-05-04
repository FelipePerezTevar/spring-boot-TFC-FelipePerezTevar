package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Productocolor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;
import org.springframework.web.bind.annotation.CrossOrigin;


import java.util.List;

@RepositoryRestResource
@CrossOrigin
public interface ProductoColorRepository extends JpaRepository<Productocolor, Long>{

    @Query("select p from Productocolor p order by p.producto.id")
    List<Productocolor> findAll();

    @Query("select p from Productocolor p where p.producto.id = ?1")
    List<Productocolor> findProductocolorByProductoId(int idProducto);

}
