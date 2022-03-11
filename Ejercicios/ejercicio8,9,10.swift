/*Ejercicio 8: Se tiene la edad de Sparky (en años perro) en una variable. 
Determine la edad de Sparky en años humanos, 
considerando que 1 año humano equivale a 7 años perro.*/
import Foundation

var edadSparkyPerro = 42

var edadSparkyHumano = edadSparkyPerro / 7

print("La edad de Sparky en años humanos es: \(edadSparkyHumano)")

/*Ejercicio 9: se tiene cuatro variables (ancho,alto,x,y),
que describen las dimensiones de una figura en forma de L.
Calcule, almacene e imprima el perimetro y el area de dicha
figura.*/

let Ancho = 8
let Alto = 4
let X = 2
let Y = 2

var Perimetro = Ancho + Alto + X + Y + (Alto - Y) + (Ancho - X)
print(Perimetro)
var Area = (X * Alto) + (Y * (Ancho - X))
print(Area)

/*Ejercicio 10: Simular que lanza un volado con una moneda
y determine si cayo aguila (par) o sello (impar) con Int.random*/
var moneda = Int.random(in: 0...1)

if moneda % 2 == 1 {
    print("Cayo sello")
} else {
    print("Cayo aguila")
}
