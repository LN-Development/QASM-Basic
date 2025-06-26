include "stdgates.inc";

//Número 3 |1⟩|1⟩
qubit q0;   // Bit quântico 1 - Bit 0 do Valor 1 |0⟩
qubit q1;   // Bit quântico 2 - Bit 1 do Valor 1 |0⟩

// Número 2 |1⟩|0⟩
qubit q2;   // Bit quântico 3 - Bit 0 do Valor 2 |0⟩
qubit q3;   // Bit quântico 4 - Bit 1 do Valor 2 |0⟩

qubit q4;   // Bit quântico 5 - Auxiliar de soma do bit 0 do produto da soma de q0 e q2
qubit q5;   // Bit quântico 6 - Auxiliar de soma do bit 1 do produto da soma de q1 e q3
qubit q6;   // Bit quântico 7 - Auxiliar de soma do bit do produto final

qubit q7;   // Bit quântico 8 - Carry
qubit q8;   // Bit quântico 9 - Carry

qubit q9; //Auxiliar de soma

bit b0; // Bit clássico usado para coletar estado quântico
bit b1; // Bit clássico usado para coletar estado quântico
bit b2; // Bit clássico usado para coletar estado quântico

//Declaração dos Bits necessários para um número representar 3
// QUBits não suportam números inteiros diretamente, somente |0⟩ e |1⟩

// Declaração Binária de 3
x q0;   //Bit que é iniciado em 0 é invertido pela porta de Pauli X, sendo transformado para |1⟩ 0->1
x q1;   //Bit que é iniciado em 0 é invertido pela porta de Pauli X, sendo transformado para |1⟩ 0->1
//3 declarado em Binário 3 = 11 = |1⟩|1⟩

// Declaração Binária de 2
x q3;//Bit que é iniciado em 0 é invertido pela porta de Pauli X, sendo transformado para |1⟩ 0->1
 //Neste caso nada vai ocorrer e o sistema vai ignorar esta informação
// 2 declarado em Binário 2 = 10 = |1⟩|0⟩

cx q0, q4; //Inversão condicional, somente inverte o Bit q4 se q0 estiver no estado |1⟩ 
cx q2, q4; //Inversão condicional, somente inverte o Bit q4 se q2 estiver no estado |1⟩
ccx q0,q2,q5;//Aplicação X em q7 somente se q0 e q2 estiverem no estado energético

cx q1, q6; //Inversão condicional, somente inverte o Bit q4 se q1 estiver no estado |1⟩ 
cx q3, q6; //Inversão condicional, somente inverte o Bit q4 se q3 estiver no estado |1⟩ 
cx q5, q6; // Estudar sobre carry 

ccx q1, q3, q7;
ccx q1, q5, q7;
ccx q3, q5, q7;



measure q4 -> b0;
measure q6 -> b1;
measure q7 -> b2;