package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "imagens")
@Getter
@Setter
public class Imagen {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "url")
    private String url;

    @Column(name = "tipo")
    private String tipo;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "imagen")
    @JsonBackReference
    private Set<Productocolor> productocolors;

}
