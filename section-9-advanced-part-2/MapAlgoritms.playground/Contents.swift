import Foundation

// Algoritmos para colecciones (Mapeado): Transformar los valores de una colección en una nueva colección. Devuelve un Array.
var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
let myDictionary = [
    5: "Cinco", 8: "Ocho", 1: "Uno", 0: "Cero", 3: "Tres", 9: "Nueve", 7: "Siete", 2: "Dos", 4: "Cuatro", 6: "Seís"
]
let mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

// Map con Array
let myMappedArray = myArray.map { (myInt) -> Int in
    return myInt + 10
}
print(myMappedArray)

let myMappedArray2 = myArray.map { (myInt) -> String in
    return "Este es nuestro entero: \(myInt)"
}
print(myMappedArray2)

// Map con Diccionarios
let myMappedDictionary = myDictionary.map { (key, value) -> String in
    return value
}
print(myMappedDictionary)

// Map con Sets
let myMappedSet = mySet.map { (myInt) -> String in
    return "Número: \(myInt)"
}
print(myMappedSet)
