import Foundation

//Tupla-----------------------------------------------------
var product = ("MacBook", 1099.99)

//Agregar y quitar elementos
var company = ("CatHow","Apple")

company.2 = "Google"

company.remove("Apple")

print(company)

//acceder a un elemento
print("Name:", product.0)
print("Price:", product.1)

//modificar un elemento
product.1 = 1299.99

//llamada tuplas
let (name, price) = product
print("Name:", name)
print("Price:", price)

//tupla anidada
var alphabets = ("A", "B", "C", ("a", "b", "c"))

// acceder al primer elemento
print(alphabets.0)   // prints "A"

// acceder al tercer elementos
print(alphabets.3)

// acceder al elemento anidado
print(alphabets.3.0)  // prints "a"

//diccionario-----------------------------------------------------
var myDictionary = ["name": "Juan", "age": 23, "country": "Mexico"]
print(myDictionary)

//agregar un elemento al diccionario
myDictionary["city"] = "Mexico City"
print(myDictionary)

//eliminar un elemento del diccionario
myDictionary.removeValue(forKey: "age")
print(myDictionary)

//actualizar un elemento del diccionario
myDictionary["age"] = 24

//recorrer un diccionario
for (key, value) in myDictionary {
    print("\(key) = \(value)")
}

