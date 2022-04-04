//
//  ViewController.swift
//  SorteoQatar
//
//  Created by Karla Rodriguez on 01/04/22.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let bombo1 = ["Qatar","Belgica","Brasil","Francia","Argentina","Inglaterra","Espana","Portugal"]
    
    let bombo2 = ["Dinamarca","Paises bajos","Alemania","Suiza","Croacia","Uruguay","Mexico","EEUU"]
    
    let bombo3 = ["Iran","Japon","Servia","Corea del sur","Tunez","Polonia","Marruecos","Senegal"]
    
    let bombo4 = ["Arabia Saudita","Ecuador","Ghana","Canada","Camerun","Peru","Costa Rica","Gales"]
    
    //creando variable paises para guardar los paises
    var misBombos: [[Equipo]] = [[],[],[],[]]

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return bombo1.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return bombo1[row]
    }
    
    @IBOutlet weak var pcvBombo: UIPickerView!

    
    @IBAction func scBombos(_ sender: UISegmentedControl) {
        
        let opcion = sender.selectedSegmentIndex
        
        switch opcion {
        case 0:
            miAlerta(mensaje: bombo1.joined(separator: "\n"))
        case 1:
            miAlerta(mensaje: bombo2.joined(separator: "\n"))
        case 2:
            miAlerta(mensaje: bombo3.joined(separator: "\n"))
        case 3:
            miAlerta(mensaje: bombo4.joined(separator: "\n"))
        default:
            break
        }
    }
    
    @IBOutlet weak var lblEquipo1: UILabel!
    @IBOutlet weak var lblEquipo2: UILabel!
    @IBOutlet weak var lblEquipo3: UILabel!
    @IBOutlet weak var lblEquipo4: UILabel!
    
    @IBOutlet weak var imvEquipo1: UIImageView!
    @IBOutlet weak var imvEquipo2: UIImageView!
    @IBOutlet weak var imvEquipo3: UIImageView!
    @IBOutlet weak var imvEquipo4: UIImageView!
    
    //clase equipo
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
    
    
    @IBAction func btnSorteo(_ sender: UIButton) {
        if misBombos[0].count <= 0 {
            return
        }
        var grupo = [Equipo]()

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
        
        imvEquipo1.image = UIImage(named: grupo[0].bandera)
        imvEquipo2.image = UIImage(named: grupo[1].bandera)
        imvEquipo3.image = UIImage(named: grupo[2].bandera)
        imvEquipo4.image = UIImage(named: grupo[3].bandera)
    }
    
    func miAlerta(mensaje: Any){
        let alerta: UIAlertController
        
        alerta = UIAlertController(
            title: "Resultados: ", message: mensaje as? String, preferredStyle: .alert
        )
        
        alerta.addAction(UIAlertAction(
            title: "Aceptar", style: .default, handler: nil
        ))
        
        self.present(alerta,animated: true,completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        pcvBombo.delegate = self
        pcvBombo.dataSource = self

        //llenar arreglo con paises MODIFICAR LAS BANDERAS, SON LAS IMAGENES
        misBombos[0].append(Equipo(bombo: 1, nombre: "Qatar", bandera: "qatar.png", tipo: "europeo"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Belgica", bandera: "belgium.png", tipo: "europeo"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Brasil", bandera: "brazil.png", tipo: "conmebol"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Francia", bandera: "france.png", tipo: "europeo"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Argentina", bandera: "argentina.png", tipo: "conmebol"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Inglaterra", bandera: "england.png", tipo: "europeo"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "España", bandera: "spain.png", tipo: "europeo"))
                misBombos[0].append(Equipo(bombo: 1, nombre: "Portugal", bandera: "portugal.png", tipo: "europeo"))

                misBombos[1].append(Equipo(bombo: 2, nombre: "Dinamarca", bandera: "denmark.png", tipo: "europeo"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Paises Bajos", bandera: "paises-bajos.png", tipo: "europeo"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Alemania", bandera: "germany.png", tipo: "europeo"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Suiza", bandera: "switzerland.png", tipo: "europeo"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Croacia", bandera: "croatia.png", tipo: "europeo"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Uruguay", bandera: "uruguay.png", tipo: "conmebol"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "Mexico", bandera: "mexico.png", tipo: "concacaf"))
                misBombos[1].append(Equipo(bombo: 2, nombre: "EE.UU", bandera: "united-states.png",tipo: "concacaf"))

                misBombos[2].append(Equipo(bombo: 3, nombre: "Iran", bandera: "iran.png", tipo: "europeo"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Japon", bandera: "japan.png", tipo: "europeo"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Serbia", bandera: "serbia.png", tipo: "europeo"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Corea del sur", bandera: "south-korea.png", tipo: "europeo"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Tunez", bandera: "tunez.png", tipo: "africa"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Polonia", bandera: "poland.png", tipo: "europeo"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Marruecos", bandera: "marruecos.png", tipo: "africa"))
                misBombos[2].append(Equipo(bombo: 3, nombre: "Senegal", bandera: "senegal.png", tipo: "europeo"))

                misBombos[3].append(Equipo(bombo: 4, nombre: "Arabia Saudita", bandera: "arabia-saudita.png", tipo: "europeo"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Ecuador", bandera: "ecuador.png", tipo: "conmebol"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Ghana", bandera: "ghana.png",tipo: "africa"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Canada", bandera: "canada.png", tipo: "concacaf"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Camerun", bandera: "camerun.png", tipo: "africa"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Peru", bandera: "peru.png", tipo: "conmebol"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Costa Rica", bandera: "costa-rica.png", tipo: "concacaf"))
                misBombos[3].append(Equipo(bombo: 4, nombre: "Gales", bandera: "gales.png", tipo: "europeo"))
    }
    
    
}