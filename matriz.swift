import Foundation

//matriz vacia forma 1
var matriz: [[Int]] = []
//matriz vacia forma 2
var matriz2 = [[Int]]()

//LLENAR MATRIZ-----------------------------
//crear renglon
var renglon: [Int] = []
//agregar elementos a un renglon
renglon.append(1)

//agregar renglon y columna a la matriz
let row = 7, col = 4
var secuencia = 10

for _ in 0..<row{
  var nuevoRenglon = [Int]()
  for _ in 0..<col{
    nuevoRenglon.append(secuencia)
    secuencia += 1
  }
  matriz.append(nuevoRenglon)
}

print("\n\n")
for r in matriz{
  print(r)
}


//matriz
let matriz: [[Int]] = [[1,2,3],[4,5,6],[7,8,9]]
print(matriz)

//acceder a un elemento especifico de la matriz
print(matriz[0][0])

//recorrer una matriz con for estilo foreach
for fila in matriz{
    for columna in fila{
        print(columna)
    }
}

//recorrer una matriz con for in
for ren in 0..<matriz.count{
    for col in 0..<matriz[ren].count{
        print(matriz[ren][col])
    }
}