package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao;


import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Producto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@Repository
@CrossOrigin
public interface ProductoRepository extends JpaRepository<Producto, Long>{
}
