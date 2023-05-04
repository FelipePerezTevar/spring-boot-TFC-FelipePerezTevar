package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "modelos")
@Getter
@Setter
public class Modelo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "modelo")
    @JsonBackReference
    private Set<Producto> productos;

}
