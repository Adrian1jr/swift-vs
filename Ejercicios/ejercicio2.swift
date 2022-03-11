/* Suponga que usted tiene x manzanas. Manuel intercambia 3 naranjas
por 5 manzanas. ¿Cuantas naranajas puede obtener de manuel y cuantas
manzanas le quedarian despues del intercambio? imprima los resultados*/
import Foundation

var manzanasTotales = 10
var manzanasMultiplos = manzanasTotales / 5
var manzanasDadas = manzanasMultiplos * 5
var manzanasRestantes = manzanasTotales - manzanasDadas
var naranjas = manzanasRestantes * 3

print("Manzanas totales: \(manzanasTotales)")
print("Manzanas dadas: \(manzanasDadas)")
print("Manzanas restantes: \(manzanasRestantes)")
print("Naranjas obtenidas: \(naranjas)")