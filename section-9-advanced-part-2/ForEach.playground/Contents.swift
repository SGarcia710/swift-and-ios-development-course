import Foundation

// Algoritmos para colecciones (ForEach): Se usa para recorrer colecciones, más simple y rápido
var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
let myDictionary = [
    5: "Cinco", 8: "Ocho", 1: "Uno", 0: "Cero", 3: "Tres", 9: "Nueve", 7: "Siete", 2: "Dos", 4: "Cuatro", 6: "Seís"
]
let mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

// ForEach en Arrays
myArray.forEach { (entero) in
    print(entero)
}

// ForEach en Dictionary
myDictionary.forEach { (key, value) in
    print(key,value)
}

// ForEach en Sets
mySet.forEach { (entero) in
    print(entero)
}
