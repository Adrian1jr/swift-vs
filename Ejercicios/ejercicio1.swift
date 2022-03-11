/* Determine el numero de segundos que tiene un año, almacenando cada
calculo parcial en una variable e imprimiendo el resultado final */
import Foundation

var diasTotales = 365
var horasTotales = 24
var minutosTotales = 60
var segundosTotales = 60

var segundosAnio = diasTotales * horasTotales * minutosTotales * segundosTotales

print("El año tiene \(segundosAnio) segundos")
