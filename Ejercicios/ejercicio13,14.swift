/*Ejercico 13: un numero cuadrado perfecto es el 
producto de multiplicar un entero por si mismo 
imprima los N cuadrados perfectos */
import Foundation
let n = 2
for x in 1...n {
   print(x * x, terminator: " ")
}

/*Ejercicio 14: Imprima la serie de números de 1 a N 
alternando su orden, es decir, el primer número siempre es el 1, 
seguido de N, luego 2, luego N-1 y así sucesivamente. 
La serie debe imprimirse en un solo renglón, 
separando los números con espacios.*/
let x = 4
var y = 0

var salida = ""
for i in 1...x {
   if i % 2 == 0 {
      salida += "\(x - (y - 1)) "
   } else {
      salida += "\(y + 1) "
      y = y + 1
   }
}

print(salida)