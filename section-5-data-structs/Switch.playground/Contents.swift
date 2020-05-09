import UIKit

var op = 1

switch op {
case 0,1,2:
    print("Eres un bebé")
case 3...10:
    print("Eres un niño")
case 11..<16:
    print("Eres un adolescente")
case 16..<70:
    print("Eres un adulto")
case 70..<100:
    print("Eres un anciano")
default:
    print("😱")
}


// Switch con Enum

enum PersonalData{
    case name, surname, adress, phone
}

let userData: PersonalData = .name

switch userData {
case .name:
    print("Estamos editando el nombre")
case .surname:
    print("Estamos editando los apellidos")
case .adress:
    print("Estamos editando la dirección")
case .phone:
    print("Estamos editando el número de teléfono ")
}
