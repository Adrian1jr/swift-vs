//simple if y else
var edad = 18

if edad >= 18 {
    print("Eres mayor de edad")
} else {
    print("Eres menor de edad")
}

//if con else if
var edad2 = 18

if edad2 >= 18 {
    print("Eres mayor de edad")
} else if edad2 >= 13 {
    print("Eres un adolescente")
} else {
    print("Eres menor de edad")
}

//switch case
var mes = "enero"

switch mes {
case "enero":
    print("Enero")
case "febrero":
    print("Febrero")
case "marzo":
    print("Marzo")
case "abril":
    print("Abril")
case "mayo":
    print("Mayo")
case "junio":
    print("Junio")
case "julio":
    print("Julio")
case "agosto":
    print("Agosto")
case "septiembre":
    print("Septiembre")
case "octubre": 
    print("Octubre")
case "noviembre":
    print("Noviembre")
case "diciembre":
    print("Diciembre")
default:
    print("Mes no valido")
}


//switch case con intervalos
let semestre = 1

switch semestre {
case 1...3:
    print("semestre 1 a 3")
case 4...6:
    print("semestre 4 a 6")
case 7...9:
    print("semestre 7 a 9")
default:
    print("Semestre no valido")
}