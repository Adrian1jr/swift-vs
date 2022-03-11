//CREACION  -----------------------------------------
//arreglo basico vacio forma 1
var arregloVacio: [Int] = []

//arreglo vacio forma 2
var arregloVacio2 = [Int]()

//METER DATOS AL ARREGLO  -----------------------------------------
//agregar elementos al arreglo
arregloVacio.append(1)
print(arregloVacio)

//agregar elementos al arreglo simultaneos
arregloVacio.append(contentsOf: [2, 3, 4])
print(arregloVacio)

//agregar elementos al arreglo en una posicion especifica
arregloVacio.insert(5, at: 0)
print(arregloVacio)

//ELIMINAR DATOS -----------------------------------------
//eliminar elementos del arreglo
arregloVacio.remove(at: 0)
print(arregloVacio)

//eliminar todos los elementos del arreglo
arregloVacio.removeAll()
print(arregloVacio)

//ACTUALIZAR DATOS -----------------------------------------
//actualizar un elemento del arreglo
arregloVacio[0] = 10
print(arregloVacio)

//actualizar los valores de un arreglo
arregloVacio[0...2] = [11, 12, 13]

//CONSULTAR DATOS -------------
//consultar el tamaño del arreglo
print(arregloVacio.count)

//consultar si el arreglo esta vacio
print(arregloVacio.isEmpty)

//consultar un elemento del arreglo
print(arregloVacio[0])

//Rango de subindice
print(arregloVacio[0...1])

//RELLENAR Y ORDERNAR -----------------------------------------
//ordenar arreglo OJO USARLO CON VAR NO CON LET
arregloVacio.sort()
print(arregloVacio)

//Tambien puedes poner Array
var arregloVacioConArray = Array(repeating: 0, count: 5)
print(arregloVacio)

//rellenar un arreglo, repetir 1, 5 veces
arregloVacio = [Int](repeating: 0, count: 5)
print(arregloVacio)


//LLENAR O RECORRER ARREGLO CON CICLOS -------------------------
//llenar arreglo con ciclo for
var arregloCicloFor = [Int]()
for i in 0...10 {
    arregloCicloFor.append(i)
}
print(arregloCicloFor)

//recorrer arreglo con ciclo for
for i in arregloCicloFor {
    print(i)
}

//llenar arreglo con ciclo while
var arregloCicloWhile = [Int]()
var i = 0
while i <= 10 {
    arregloCicloWhile.append(i)
    i += 1
}
print(arregloCicloWhile)

//recorrer arreglo con ciclo while
i = 0
while i < arregloCicloWhile.count {
    print(arregloCicloWhile[i])
    i += 1
}

//llenar arreglo con ciclo repeat while
var arregloCicloRepeatWhile = [Int]()
var i = 0
repeat {
    arregloCicloRepeatWhile.append(i)
    i += 1
} while i <= 10
print(arregloCicloRepeatWhile)

//recorrer arreglo con ciclo repeat while
i = 0
repeat {
    print(arregloCicloRepeatWhile[i])
    i += 1
} while i < arregloCicloRepeatWhile.count

//CONCATENAR ARREGLOS -----------------------------------------
var arregloSumar = [Int]()
var arregloSumar2 = [Int]()

arregloSumar.append(contentsOf: [1, 2, 3])
arregloSumar2.append(contentsOf: [4, 5, 6])

arregloSumar.append(contentsOf: arregloSumar2)
print(arregloSumar)

//result = [1, 2, 3, 4, 5, 6]