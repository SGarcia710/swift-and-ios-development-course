import UIKit

struct cuadrado {
    // Propiedades
    var ancho = 10
    var alto = 10
    // Método
    func calcularArea() -> Int{
        return alto * ancho
    }
}


var miCuadrado = cuadrado();
var areaMiCuadrado = miCuadrado.calcularArea()
