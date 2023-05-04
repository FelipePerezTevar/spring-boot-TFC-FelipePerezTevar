package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;


import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;


@Entity
@Table(name="productocolors")
@Getter
@Setter
public class Productocolor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne()
    @JoinColumn(name = "id_producto", nullable = false)
    @JsonManagedReference
    private Producto producto;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_color", nullable = false)
    @JsonManagedReference
    private Color color;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name= "id_imagen", nullable = false)
    @JsonManagedReference
    private Imagen imagen;

}
