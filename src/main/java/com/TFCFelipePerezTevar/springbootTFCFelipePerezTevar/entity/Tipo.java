package com.TFCFelipePerezTevar.springbootTFCFelipePerezTevar.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

@Entity
@Table(name = "tipos")
@Getter
@Setter
public class Tipo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "descripcion")
    private String descripcion;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tipo")
    @JsonBackReference
    private Set<Producto> productos;

}
