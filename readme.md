# Practica Final Computadores I
1er curso, 1er cuatrimestre. Grado en Ingeniería Informática. Facultad de Ciencias de la Universidad de Salamanca.

<br />

*BLANCO DE LA IGLESIA, DAVID*. [@Ugulberto](https://github.com/Ugulberto)

*RODRÍGUEZ FERNÁNDEZ, NICOLÁS*. [@Nico-RF](https://github.com/Nico-RF/)
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
    COMPI_PRACTICAFINAL/                # Root del proyecto
    │
    ├── files                               # Archivos de código y derivados
    │     ├── codigo_Practica_entregable.v      # Archivo MAIN: menú principal y parrilleo de subrutinas
    │     └── contador_arbitrario.dmp           # Resultado ondulatorio del contador
    │
    ├── gitDocs                             # Documentación explícita para el repositorio
    │     └── license                           # Licencia del copyright (C) 
    │
    ├── images                              # Imágenes construidas
    │     ├── circuito.png                      # Cableado de los contadores 
    │     └── circuito.svg                      # Cableado de los contadores (mayor detalle y resolución)
    │
    ├── report                              # Informe redactado
    │     └── informe.pdf                       # Informe final como documentación del proyecto
    │
    └── readme.md                         # Guía de lectura del proyecto

## Imagen del cableado del circuito
<img width="1146" height="849" alt="circuito" src="https://github.com/user-attachments/assets/f1294ea2-1dff-4c0c-b950-3d420f49a24d" />

## Instalación del entorno de Verilog:
Como la manera de instalación del entorno ya está explicada de forma magnífica en otra web, os dejamos el maravilloso sitio web de AVELLANO FIS USAL, donde se encuentran explicadas todas las prácticas de Computadores I/II y de Sistemas Operativos I/II: <br /><br />
https://avellano.usal.es/~compi/sesion1.htm &emsp;&emsp;&nbsp;# Explicación instalación <br />
https://avellano.usal.es/~compi/ &nbsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&nbsp;# gral: Computadores I<br />
<br />
De todas maneras, os dejamos resumido lo que hay que hacer:<br />
- Tener una distribución de Linux (Debian, Kubuntu). O una máquina virtual, en su defecto.
- Las implementaciones de Icarus Verilog y de GPL Cver, que se instalan ejecutando en terminal:

> &emsp;&emsp;&emsp;&emsp; sudo apt-get install iverilog <br />
> &emsp;&emsp;&emsp;&emsp; sudo apt-get install gplcver

- Un editor de texto.


## Ejecución:
Para que funcione el proyecto, en terminal (por ejemplo, de un entorno WSL) deberemos poner:
> iverilog codigo_Practica_entregable.v -o contador

y posteriormente ejecutar
> ./contador
<br />

## Disclaimers:
1.° LA DETECCIÓN DE COPIA, TOTAL O PARCIAL IMPLICA UN CERO AUTOMÁTICO EN LA PARTE PRÁCTICA DE LA ASIGNATURA. <br /><br />
2.° Se reservan todos los derechos de autoría de este proyecto bajo amparo del *Real Decreto Legislativo 1/1996, de 12 de abril, por el que se aprueba el texto refundido de la **Ley de Propiedad Intelectual**, regularizando, aclarando y armonizando las disposiciones legales vigentes sobre la materia.*
