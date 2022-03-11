import Foundation
//hacer la serie de Fibonacci hasta N
var N = 3
var aux1 = 0
var aux2 = 1
var Fibonacci = "1, "
for _ in 1..<N
{
    let aux3 = aux1 + aux2 
    aux1 = aux2
    aux2 = aux3
    Fibonacci += "\(aux3), "}
print(Fibonacci)
