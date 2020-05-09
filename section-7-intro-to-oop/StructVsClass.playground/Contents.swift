import UIKit

// Referencia vs Copia
class ClaseHumano {
    var nombre = "Sebastián", apellido = "García"
    
    func saludar () {
        print("Hola soy \(nombre)")
    }
}

struct EstructuraHumano {
    var nombre = "Sebastián", apellido = "García"
    
    func saludar () {
        print("Hola soy \(nombre)")
    }
}

var miEstructuraHumano = EstructuraHumano()
miEstructuraHumano.nombre = "Camila"
var miClaseHumano = ClaseHumano()
miClaseHumano.nombre = "Luisa"


var miSegundaEstructuraHumano = miEstructuraHumano // Copia
miSegundaEstructuraHumano.nombre = "Daniela"
var miSegundaClaseHumano = miClaseHumano // Referencia
miSegundaClaseHumano.nombre = "Valeria"

miEstructuraHumano.nombre
miClaseHumano.nombre


// Las clases pueden heredar de una clase padre
