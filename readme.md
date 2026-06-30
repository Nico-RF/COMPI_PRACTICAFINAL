# Practica Final Computadores I
1er curso, 1er cuatrimestre. Grado en Ingeniería Informática. Facultad de Ciencias de la Universidad de Salamanca.

<br />

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
> iverilog Codigo_Practica_entregable.v -o contador

y posteriormente ejecutar
> ./contador

<br />


