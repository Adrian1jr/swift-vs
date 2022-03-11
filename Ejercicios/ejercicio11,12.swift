//Ejercicio 11 con for in sacar total de numeros par e impar entre 1 y 10
import Foundation

var impares = 0, pares = 0
for x in i...10
{
    if x % 2 == 0 {
        pares += 1
    } else {
        impares += 1
    }
}

print("Hay \(pares) pares y \(impares) impares")

//Ejercicio 12: sacar los numeros a la inversa en el rango de 1 a 10
for x in (1...10).reversed()
{
    print(x)
}
