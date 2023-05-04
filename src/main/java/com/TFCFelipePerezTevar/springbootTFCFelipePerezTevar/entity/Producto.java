package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import java.util.Set;

@Entity
@Table(name = "productos")
@Getter
@Setter
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "referencia")
    private String referencia;



    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_modelo", nullable = false)
    @JsonManagedReference
    private Modelo modelo;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_tipo", nullable = false)
    @JsonManagedReference
    private Tipo tipo;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "producto")
    @JsonBackReference
    private Set<Productocolor> productocolors;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "producto")
    @Fetch(FetchMode.JOIN)
    @JsonManagedReference
    @OrderBy("id ASC")
    private Set<Medida> medidas;

}
