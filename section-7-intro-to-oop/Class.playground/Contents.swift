import UIKit

class Persona {
    let nombre = "Sebastián"
    let apellidos = "García Ospina"
    let edad = 23
    
    func saludar() {print("Hey, hola! Mi nombre es \(nombre) \(apellidos).")}
}

let sebastian = Persona()
sebastian.saludar()
