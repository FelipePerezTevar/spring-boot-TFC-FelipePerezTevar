package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Table(name = "medidas")
@Getter
@Setter
public class Medida {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "diametro")
    private double diametro;

    @Column(name = "ancho")
    private double ancho;

    @Column(name = "alto")
    private double alto;

    @Column(name = "precio")
    private double precio;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name ="id_producto", nullable = false)
    @JsonBackReference
    private Producto producto;

}
