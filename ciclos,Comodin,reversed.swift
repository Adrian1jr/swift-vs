//Comodin explicado con un ciclo
//El comodin es para no poner la variable en este caso x por _
for _ in 1...10 {
   print("Hola")
}


//ciclos FOR-------------------------

//for basico
for(x = 0; x < 10; x++) {
    print(x)
}

//for in
for x in 1...10 {
    print(x)
}

//for in con where
for x in 1...10 where x % 2 == 0 {
    print(x)
}

//for in con stride (desde, hasta, paso)
for x in stride(from: 1, to: 10, by: 2) {
    print(x)
}

//for in con where y break
for x in 1...10 where x % 2 == 0 {
    print(x)
    break
}

//ciclos WHILE y DO WHILE-------------------------

//while basico
var x = 0
while x < 10 {
    print(x)
    x += 1
}

//do while
var y = 0
repeat {
    print(y)
    y += 1
} while y < 10

