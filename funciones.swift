//FUNCIONES

//Funcion simple
func holaMundo() {
    print("Hola mundo")
}

holaMundo()

//funcion con un parametro de entrada, sin valor de regreso
func suma(numero1: Int, numero2: Int) {
    print(numero1 + numero2)
}

suma(numero1: 1, numero2: 2)

//funcion con un parametro de entrada y valor de retorno
func suma2(numero1: Int, numero2: Int) -> Int {
    return numero1 + numero2
}

suma2(numero1: 1, numero2: 2)

//funcion con multiples parametros
func suma3(numero1: Int, numero2: Int, numero3: Int) -> Int {
    return numero1 + numero2 + numero3
}

suma3(numero1: 1, numero2: 2, numero3: 3)

//funcion con condiciones
func suma4(numero1: Int, numero2: Int, numero3: Int) -> Int {
    if numero1 > numero2 {
        return numero1 + numero2 + numero3
    } else {
        return numero2 + numero3
    }
}

suma4(numero1: 1, numero2: 2, numero3: 3)

//parametros sin nombre externo en el parametro
func suma5(_ numero1: Int, _ numero2: Int, _ numero3: Int) -> Int {
    return numero1 + numero2 + numero3
}

print(suma5(1, 2, 3))

//parametros con valores predeterminados
func suma6(_ numero1: Int = 1, _ numero2: Int = 2, _ numero3: Int = 3) -> Int {
    return numero1 + numero2 + numero3
}

print(suma6())

//funcion que regresa un arreglo
func arreglo() -> [Int] {
    return [1, 2, 3]
}

print(arreglo())