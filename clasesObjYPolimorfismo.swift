import Foundation

//crear clase figura con el metodo calcular Area
class Figura {
    var area: Double
    
    init(area: Double) {
        self.area = area
    }
    
    func calcularArea() -> Double {
        return area
    }
}

//Crear la clase rectangulo que herede de figura y que tenga los atributos largo y ancho
class Rectangulo: Figura {
    var largo: Double
    var ancho: Double
    
    init(largo: Double, ancho: Double) {
        self.largo = largo
        self.ancho = ancho
        super.init(area: largo * ancho)
    }
    
    override func calcularArea() -> Double {
        return largo * ancho
    }
}

//Crear la clase circulo que herede de figura y que tenga el atributo radio
class Circulo: Figura {
    var radio: Double
    
    init(radio: Double) {
        self.radio = radio
        super.init(area: 3.14 * radio * radio)
    }
    
    override func calcularArea() -> Double {
        return 3.14 * radio * radio
    }
}

//crear la clase triangulo que herede de figura y que tenga los atributos base y altura
class Triangulo: Figura {
    var base: Double
    var altura: Double
    
    init(base: Double, altura: Double) {
        self.base = base
        self.altura = altura
        super.init(area: (base * altura) / 2)
    }
    
    override func calcularArea() -> Double {
        return (base * altura) / 2
    }
}

//imprimir el area de cada figura
let rectangulo = Rectangulo(largo: 10, ancho: 5)
let circulo = Circulo(radio: 5)
let triangulo = Triangulo(base: 10, altura: 5)

print(rectangulo.calcularArea())
print(circulo.calcularArea())
print(triangulo.calcularArea())
