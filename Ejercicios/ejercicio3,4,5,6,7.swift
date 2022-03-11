/*Ejercicio 3: dado dos numeros en a y b, determine e imprima el 
mayor de ellos o indique si son iguales*/
import Foundation

var a: Int = 5
var b: Int = 2

if a > b {
    print("El mayor es a con valor de: \(a)")
} else if a < b {
    print("El mayor es b con valor de: \(b)")
} else {
    print("Son iguales")
}

//Ejercicio 4: Imprima si el valor en x es par o impar
var x: Int = 5

if x % 2 == 0 {
    print("El valor de x es par")
} else {
    print("El valor de x es impar")
}

/*Ejercicio 5: Tiene dos numeros en a y b, 
inidique si a es divisible entre b */
var a: Int = 32
var b: Int = 8

if a % b == 0 {
    print("El valor de a es divisible entre b")
} else {
    print("El valor de a no es divisible entre b")
}

/*Ejercicio 6: se tienen tres variables (a,b,c). Imprima la 
leyenda "Al menos dos variables son  iguales" o bien la leyenda
"todas las variables son diferentes" segun sea el caso.*/

var a = 5, b = 5, c = 5

if a == b || a == c || b == c {
    print("Al menos dos variables son iguales")
} else {
    print("Todas las variables son diferentes")
} 

/*Ejercicio 7: El programa de los eggs*/

var eggs = 0
var tocino = 0

if(eggs == 2 && tocino == 3){
    print("Ambos se pueden cocinar")
}
else if(eggs == 20 && tocino == 9){
    print("Debe desechar el tocino")
}
else if(eggs == 23 && tocino == 11){
    print("Debe desechar ambos")
}
else if(eggs == 25 && tocino == 6){
    print("Debe desechar los blanquillos")
}