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

 <br/>

  ***NOTAS***

 *Solo va a devolver datos porque se va a utilizar para una página web que puede usar cualquiera, por lo tanto no deben tener permitido editar la base de datos*


 *También es posible devolver todos los demás registros de cada tabla de la base de datos (color, imagen, medida y producto). Para ejecutarlo hay que hacerlo como se hace con tipo y modelo (/(nombre de la tabla)/lista)*


## Requisitos

  1. Tener Java instalado en el dispositivo

<br/>

   ***NOTAS***

   *Aunque gran parte de los ordenadores tengan ya instalado Java por defecto, es posible que no lo tenga. Para instalar Java en su ordenador, debe abrir su navegador de confianza buscar "descargar java (el sistema operativo que este utilizando)" y de los primeros enlaces saldrá la página oficial de Java con el sistema operativo buscado.*

## Despliegue

  1. Descargar el proyecto desde Github y descomprimirlo
  2. Abrir un terminal y situarse en la carpeta donde se encuentra el programa descomprimido
  3. Ejecutar el comando que se encuentra abajo
  > java -jar .\spring-boot-TFC-FelipePerezTevar-0.0.1-SNAPSHOT.jar -D spring.config.name=application

## Tecnologias

 + **Spring**: Base del proyecto
 + **Maven**: Importar dependencias
 + **Lombok**: Facilidades para la programación

## Autor

Felipe Perez Tevar


