import UIKit

// Sintaxis enumeración
enum PersonalData {
    case name
    case surname
    case adress
    case phone
}


var currentData: PersonalData = .name
var input = "Sebastián"

currentData = .phone
input = "6000"

// Enumeraciones con valores asociados
enum ComplexPersonalData {
    case name(String)
    case surname(String, String)
    case adress(String, Int)
    case phone(Int)
}

var complexCurrentData: ComplexPersonalData = .name("Sebastián")
complexCurrentData = .adress("Calle 5", 59)


// Enumeraciones con el mismo tipo de valor

enum RawPersonalData:String {
    case name = "Nombre"
    case surname = "Apellidos"
    case adress = "Dirección"
    case phone = "Número de teléfono"
}

RawPersonalData.name.rawValue
