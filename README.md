# API PFC - Cerámicas Doli

**Índice**
1. [Descripción](#descripcion)
2. [Endpoints](#endpoints)
3. [Requisitos](#requisitos)
4. [Despliegue](#despliegue)
5. [Tecnologias](#tecnologias)
6. [Autor](#autor)


## Descripcion

API de Spring para el proyecto final de ciclo de Cerámicas Doli.

## Endpoints

*Solo va a devolver datos porque se va a utilizar para una página web que puede usar cualquiera, por lo tanto no deben tener permitido editar la base de datos*

 + Devolver todos los productos 

 > /productocolor/lista

  + Devolver todos los producto-color que tengan el mismo id de producto

  > /productocolor//producto/(id del producto) 

  + Devolver todos los producto-color que concidan con una altura y/o una anchura y/o un tamaño de boca y/o una descripción de un tipo y/o un nombre de un modelo

  > /productocolor/filtro?diametro=0&alto=0&ancho=0&tipo=tipo&modelo=modelo
  > 
  > *Para este endpoint hay que enviar siempre los 5 parametros, pero para indicar que queremos un campo en nulo hay que ponerlo como lo pone el ejemplo.*  

 + Devolver todos los tipos 

 > /tipo/lista

 + Devolver todos los modelos

 > /modelo/lista

 *También es posible devolver todos los demás registros de cada tabla de la base de datos (color, imagen, medida y producto). Para ejecutarlo hay que hacerlo como se hace con tipo y modelo (/(nombre de la tabla)/lista)*


## Requisitos

Que funcione el ordenador

## Despliegue

Dandole a start

## Tecnologias

 + **Spring**: Base del proyecto
 + **Maven**: Importar dependencias
 + **Lombok**: Facilidades para la programación

## Autor

Felipe Perez Tevar


