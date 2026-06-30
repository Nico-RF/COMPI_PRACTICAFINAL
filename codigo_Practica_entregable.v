module JK(output reg Q, output wire NQ, input wire J, input wire K, input wire CLK);
not(NQ,Q);

// Ponemos una condición inicial Q = 0.
initial
    begin
        Q=0;
    end

// Flanco de subida
always @(posedge CLK)
    case ({J,K})
        2'b10: Q=1;
        2'b01: Q=0;
        2'b11: Q=~Q;
    endcase
endmodule


module Contador (output wire[3:0] Q, input wire CLK);

// Wire de salidas nQ (Q negada)
    wire [3:0] nQ;

// Wires que van directos a las entradas J y K de los respectivos biestables.
    wire wJ3, wK3, wJ2, wK2, wJ1, wK1, wJ0, wK0;

// Wires que conectan puertas lógicas entre sí
    wire j3_t1, j3_t2;
    wire k3_t1, k3_t2, k3_t3;
    wire j1_t1, j1_t2;
    wire k1_t1, k1_t2;
    wire j0_t1, j0_t2, j0_t3;
    wire k0_t1;

// Cableado de los J y los K

// J3 = nQ1Q0 + Q2Q1nQ0
    and g_j3_1 (j3_t1, nQ[1], Q[0]);
    and g_j3_2 (j3_t2, Q[2], Q[1], nQ[0]);
    or g_J3 (wJ3, j3_t1, j3_t2);

// K3 = Q2nQ1nQ0 + Q2Q1Q0 + nQ2Q1nQ0
    and g_k3_1 (k3_t1, Q[2], nQ[1], nQ[0]);
    and g_k3_2 (k3_t2, Q[2], Q[1], Q[0]);
    and g_k3_3 (k3_t3, nQ[2], Q[1], nQ[0]);
    or g_K3 (wK3, k3_t1, k3_t2, k3_t3);


// J2 = nQ3Q1Q0
    and g_J2 (wJ2, nQ[3], Q[1], Q[0]);

// K2 = Q3Q1Q0
    and g_K2 (wK2, Q[3], Q[1], Q[0]);


// J1 = nQ3Q2Q0 + Q3nQ2nQ0
    and g_j1_1 (j1_t1, nQ[3], Q[2], Q[0]);
    and g_j1_2 (j1_t2, Q[3], nQ[2], nQ[0]);
    or g_J1 (wJ1, j1_t1, j1_t2);

// K1 = Q3Q2Q0 + nQ3Q2nQ0
    and g_k1_1 (k1_t1, Q[3], Q[2], Q[0]);
    and g_k1_2 (k1_t2, nQ[3], Q[2], nQ[0]);
    or g_K1 (wK1, k1_t1, k1_t2);


// J0 = nQ3nQ2 + Q3Q1 + Q2nQ1 
    and g_j0_1 (j0_t1, nQ[3], nQ[2]);
    and g_j0_2 (j0_t2, Q[3], Q[1]);
    and g_j0_3 (j0_t3, Q[2], nQ[1]);
    or g_J0 (wJ0, j0_t1, j0_t2, j0_t3);

// K0 = nQ2 + Q3 ⊕ Q1
    xor g_k0_1 (k0_t1, Q[3], Q[1]);
    or g_K0 (wK0, nQ[2], k0_t1);


// Conectamos los wires a las entradas J y K de los biestables
    JK jk3 (Q[3], nQ[3], wJ3, wK3, CLK);
    JK jk2 (Q[2], nQ[2], wJ2, wK2, CLK);
    JK jk1 (Q[1], nQ[1], wJ1, wK1, CLK);
    JK jk0 (Q[0], nQ[0], wJ0, wK0, CLK);
endmodule


module test;
    reg C; // CLOCK
    wire [3:0] Q; // Salidas
    Contador counter (Q,C); // Instancia del contador

// El clock oscila cada 10 unidades de tiempo.
    always begin
        #10 C=~C;
    end

    initial begin

// Estados inválidos:
// 0 2 4 7 9 11 13 14
// 0000 0010 0100 0111 1001 1011 1101 1110
// Ponemos estos números binarios en estas líneas para comprobar cómo desembocan en estados válidos.

// Ahora, empezamos por el estado 6 (0110 en binario):
        counter.jk3.Q = 'b0;
        counter.jk2.Q = 'b1;
        counter.jk1.Q = 'b1;
        counter.jk0.Q = 'b0;

// Archivo para GTKWave (opcional si solo quieres ver consola)
        $dumpfile("contador_arbitrario.dmp");
        $dumpvars(2, counter, Q);
        C=0;

// Monitoreamos la señal de reloj para observar los cambios en la salida. Imprimimos la salida en binario para ver el correcto funcionamiento del contador.
        $monitor($time, ": Clock: %b | Salida Q: %d (Binario: %b)", C, Q, Q);
        #1000 $finish; // terminamos el programa a las 1000 unidades de tiempo para evitar entrar en un bucle infinito.
    end
endmodule
