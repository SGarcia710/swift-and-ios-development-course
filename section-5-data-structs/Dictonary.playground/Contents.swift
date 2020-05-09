import UIKit

// Sintaxis Diccionarios
let myClassicDictionary = Dictionary<Int, String>() // Opción clásica
var myModernDictionary = [Int:String]()

// Añadir datos
myModernDictionary = [001:"Juan", 002:"Sebastián"] // Inicializar
myModernDictionary[003] = "Natalia" // Añadir un solo dato

// Acceder a un dato
myModernDictionary[001]

// Actualizar valor
myModernDictionary[002] = "Sebastián García"
myModernDictionary.updateValue("Sebastián García", forKey: 002) // Opción clásica



// Borrar un dato
myModernDictionary[002] = nil
myModernDictionary.removeValue(forKey: 002) // Opción clásica
