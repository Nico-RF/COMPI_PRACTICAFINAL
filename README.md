# Practica Final Computadores I
1er curso, 1er cuatrimestre. Grado en Ingeniería Informática. Facultad de Ciencias de la Universidad de Salamanca.

*BLANCO DE LA IGLESIA, DAVID*.

*RODRÍGUEZ FERNÁNDEZ, NICOLÁS*.
<br />
<br />

__Nota:__ Informe: **10.0**. <br />
&emsp;&emsp;&ensp;&nbsp;Defensa: **10.0**.
<br />
<br />

## Enunciado:
Diseñar y programar en Verilog un contador de cuenta arbitraria de 4 bits.
Los grupos serán de dos personas como MÁXIMO, y a cada grupo le corresponderá una secuencia de 8 números diferentes y generados de forma aleatoria. Se deberá publicar el grupo en el foro correspondiente y se realizará la correspondiente asignación de secuencia.
Será necesario entregar el programa en Verilog que simule el comportamiento del circuito y la salida vista en GTKWave. 

El resto de las indicaciones técnicas se encontraban en el PDF subido a Studium, llamado «Enunciado práctica evaluable».
<br />
<br />

## Arquitectura del proyecto:
    COMPI_PRACTICAFINAL/              # Root del proyecto
    │
    ├─ circuito.png                   # Cableado de los contadores 
    ├─ Codigo_Practica_entregable.v   # Archivo MAIN: menú principal y parrilleo de subrutinas
    ├─ contador_arbitrario.dmp        # Resultado del contador
    ├─ informe.pdf                    # Informe final como documentación del proyecto
    ├─ LICENSE                        # Licencia del copyright (C) 
    └─ readme.md                      # Guía de lectura del proyecto

## Instalación entorno verilog:

## Ejecución:
Para que funcione el proyecto, en terminal (por ejemplo, de un entorno WSL) deberemos poner:
> iverilog Codigo_Practica_entregable.v -o contador

y posteriormente ejecutar
> ./contador

<br />


