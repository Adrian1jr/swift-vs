import Foundation

//crear clase equipo con atributo nombre, bandera, concacaf
class Equipo {
    var bombo: Int
    var nombre: String
    var bandera: String
    var tipo: String

    init(bombo: Int,nombre: String, bandera: String, tipo: String) {
        self.bombo = bombo
        self.nombre = nombre
        self.bandera = bandera
        self.tipo = tipo
    }
}

//creando variable paises para guardar los paises
var paisesBombo1 = [Equipo]()
var paisesBombo2 = [Equipo]()
var paisesBombo3 = [Equipo]()
var paisesBombo4 = [Equipo]()

//llenar arreglo con paises MODIFICAR LAS BANDERAS, SON LAS IMAGENES
paisesBombo1.append(Equipo(bombo: 1, nombre: "Qatar", bandera: "qatar.png", tipo: "europeo"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Belgica", bandera: "belgium.png", tipo: "europeo"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Brasil", bandera: "brazil.png", tipo: "conmebol"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Francia", bandera: "france.png", tipo: "europeo"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Argentina", bandera: "argentina.png", tipo: "conmebol"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Inglaterra", bandera: "england.png", tipo: "europeo"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "España", bandera: "spain.png", tipo: "europeo"))
paisesBombo1.append(Equipo(bombo: 1, nombre: "Portugal", bandera: "portugal.png", tipo: "europeo"))

paisesBombo2.append(Equipo(bombo: 2, nombre: "Dinamarca", bandera: "denmark.png", tipo: "europeo"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Paises Bajos", bandera: "netherlands.png", tipo: "europeo"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Alemania", bandera: "germany.png", tipo: "europeo"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Suiza", bandera: "switzerland.png", tipo: "europeo"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Croacia", bandera: "croatia.png", tipo: "europeo"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Uruguay", bandera: "uruguay.png", tipo: "conmebol"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "Mexico", bandera: "mexico.png", tipo: "concacaf"))
paisesBombo2.append(Equipo(bombo: 2, nombre: "EE.UU", bandera: "usa.png",tipo: "concacaf"))

paisesBombo3.append(Equipo(bombo: 3, nombre: "Iran", bandera: "iran.png", tipo: "europeo"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Japon", bandera: "japan.png", tipo: "europeo"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Serbia", bandera: "serbia.png", tipo: "europeo"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Corea del sur", bandera: "southkorea.png", tipo: "europeo"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Tunez", bandera: "tunisia.png", tipo: "africa"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Polonia", bandera: "poland.png", tipo: "europeo"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Marruecos", bandera: "morocco.png", tipo: "africa"))
paisesBombo3.append(Equipo(bombo: 3, nombre: "Senegal", bandera: "senegal.png", tipo: "europeo"))

paisesBombo4.append(Equipo(bombo: 4, nombre: "Arabia Saudita", bandera: "saudiarabia.png", tipo: "europeo"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Ecuador", bandera: "ecuador.png", tipo: "conmebol"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Ghana", bandera: "ghana.png",tipo: "africa"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Canada", bandera: "canada.png", tipo: "concacaf"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Camerun", bandera: "cameroon.png", tipo: "africa"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Peru", bandera: "peru.png", tipo: "conmebol"))
paisesBombo4.append(Equipo(bombo: 4, nombre: "Costa Rica", bandera: "costarica.png", tipo: "concacaf"))

var misBombos = [paisesBombo1, paisesBombo2, paisesBombo3, paisesBombo4]
var grupo = [Equipo]()

//recorrer el bombo
for bombo in misBombos {
    bombo.shuffle()
    var equipoValido = false

   while !equipoValido {
        let equipo = bombo.popLast()

        if equipo.tipo !== "europeo" && grupo.contains(where: {$0.tipo == equipo?.tipo}) {
            bombo.insert(equipo!, at: 0)
        } else {
            grupo.append(equipo!)
            equipoValido = true
        }
   }
}


//do the same for on the top of the bombo but with for in
for i in 0...misBombos.count-1 {
    misBombos[i].shuffle()
    var equipoValido = false
    while !equipoValido {
        let equipo = misBombos[i].popLast()
        if equipo?.tipo != "europeo" && grupo.contains(where: {$0.tipo == equipo?.tipo}) {
            misBombos[i].insert(equipo!, at: 0)
        } else {
            grupo.append(equipo!)
            equipoValido = true
        }
    }
}

//asignarle los valores a mis ImageView, donde solo ocupo 4
imvEquipo1.image = UIImage(named: grupo[0].bandera)
imvEquipo2.image = UIImage(named: grupo[1].bandera)
imvEquipo3.image = UIImage(named: grupo[2].bandera)
imvEquipo4.image = UIImage(named: grupo[3].bandera)



