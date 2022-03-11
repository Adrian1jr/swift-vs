//Tenemos en swift los tipos de datos:

let carBrand: String = "Tesla"
let carDoors: Int = 4
let carLength: Double = 195.9
var carScheduledMaintenances = [Date]()
var carInsured: Bool = true
//Tipo de dato tupla
let httpERROR: (Int, String) = (404, "test")

//Darle un nombre a tu tipo de dato para usarlo.
typealias Precio = Double
var precio: Precio = 100.0

typealias Car = (brand: String, doors: Int, length: Double, scheduledMaintenances: [Date], insured: Bool)
Car = ("Tesla", 4, 195.9, [Date()], true)

//Tipo opcional de datos
var car: Car? 
var prueba: String?
