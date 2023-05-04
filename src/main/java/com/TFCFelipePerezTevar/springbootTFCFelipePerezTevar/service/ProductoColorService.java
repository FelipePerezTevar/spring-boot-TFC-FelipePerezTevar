package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.service;

import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.dao.ProductoColorRepository;
import com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity.Productocolor;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.TypedQuery;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Transactional
public class ProductoColorService {

    @Autowired
    ProductoColorRepository productoColorRepository;

    @Autowired
    EntityManagerFactory entityManagerFactory;


    public List<Productocolor> list(){ return productoColorRepository.findAll();}

    public List<Productocolor> listProducto(int idProducto){return productoColorRepository.findProductocolorByProductoId(idProducto);}



    public List<Productocolor> findByProducto2(Integer diametro, Integer alto, Integer ancho, String tipo, String modelo){

        EntityManager em = entityManagerFactory.createEntityManager();
        String jpql = "select pc from Productocolor pc inner join Producto p on pc.producto.id = p.id inner join Medida me on me.producto.id = p.id inner join Tipo t on p.tipo.id = t.id inner join Modelo mo on p.modelo.id = mo.id where 1=1 ";


        if(diametro != null){
            jpql += "and me.diametro = :diametro ";
        }

        if(alto != null){
            jpql += "and me.alto = :alto ";
        }

        if(ancho != null){
            jpql += "and me.ancho = :ancho ";
        }

        if(tipo != null){
            jpql += "and t.descripcion = :tipo ";
        }

        if(modelo != null){
            jpql += "and mo.nombre = :modelo ";
        }

        jpql += "order by p.id";

        TypedQuery<Productocolor> query = em.createQuery(jpql, Productocolor.class);

        if(diametro != null){
            query.setParameter("diametro", diametro);
        }

        if(alto != null){
            query.setParameter("alto", alto);
        }

        if(ancho != null){
            query.setParameter("ancho", ancho);
        }

        if(tipo != null){
            query.setParameter("tipo", tipo);
        }

        if(modelo != null){
            query.setParameter("modelo", modelo);
        }

        List<Productocolor> result = query.getResultList();

        em.close();

        return result;

    }

}
