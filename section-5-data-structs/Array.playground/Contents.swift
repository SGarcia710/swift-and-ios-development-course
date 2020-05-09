import UIKit

var arregloNumeros = [1, 2, 3]

let arregloNumerosInmutable = [3, 2, 1]

print(arregloNumeros[1])

// Agregar valores
arregloNumeros.append(5)
arregloNumeros.insert(4, at: 3)

// Eliminar valores
arregloNumeros.removeLast()
arregloNumeros.remove(at: 3)

// Vaciar todo el arreglo
arregloNumeros.removeAll()

// Arreglo vacío
var emptyArray:[Int] = []
