import Foundation
/*Ejercicio 16: Imprima el elemento mayor y el menor de un arreglo 
de N números */
var arreglo:[Int] = [52,49,86,34,99,57,32]
var mayor = 0
var menor = arreglo[0]
for numero in arreglo
{
   if(numero > mayor){
     mayor = numero;
   }
   if(numero < menor){
     menor = numero;
   }
}

print("el mayor es: ",mayor)
print("el menor es: ",menor)

/*Ejercicio 17: Imprima los elementos de un vector en orden inverso 
al que se encuentran almacenados.*/
var arreglo = [5,6,10,1,42,32,19]
var salida = ""
for i in arreglo.reversed()
{
    if(i == arreglo[0])
    {salida += "\(i)"}
    else
    {salida += "\(i),"}
}
print(salida)

/*Ejercicio 18: Invierta los elementos de un arreglo sin crear otro.*/
var arreglo = [19,32,42,1,10,6,5]
arreglo.reverse()
print(arreglo)

/*Ejercicio 19: Dada una matriz cuadrada A, almacene los elementos de la 
diagonal principal y los de la diagonal inversa, 
en vectores llamados DP y DI respectivamente.*/
var A:[[Int]] = [[3,5,8,2],
               [2,7,9,5],
               [2,8,9,2],
               [4,6,7,1]]
var DP: [Int] = []
var DI: [Int] = []
for (i,_) in A.enumerated()
{
  let valor = A[i][i]
  DP.append(valor)
}
print(DP)
A.reverse()
for (i,_) in A.enumerated()
{
  let valor = A[i][i]
  DI.append(valor)
}
DI.reverse()
print(DI)

/*Ejercicio 20: Dada una matriz cuadrada A, 
imprima el resultado de sumar los elementos que no 
corresponden a la periferia de la matriz.*/
var A: [[Int]] = [[1,5,6,2,7],
                  [8,7,1,8,3],
                  [4,5,6,0,3],
                  [7,2,3,1,9],
                  [6,0,4,5,2]]
var resultado = A[1][1] + A[1][2] + A[1][3] + A[2][1] + A[2][2] + A[2][3] + A[3][1] + A[3][2] + A[3][3]
print(resultado)
