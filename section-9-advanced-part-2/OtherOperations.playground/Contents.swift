import Foundation

// Otras operaciones para colecciones
var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
var myDictionary = [
    5: "Cinco", 8: "Ocho", 1: "Uno", 0: "Cero", 3: "Tres", 9: "Nueve", 7: "Siete", 2: "Dos", 4: "Cuatro", 6: "Seís"
]
var mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]


// Operación count
print(myArray.count)
print(myDictionary.count)
print(mySet.count)

// Operación isEmpty
print(myArray.isEmpty)
print(myDictionary.isEmpty)
print(mySet.isEmpty)

// Operación reversed
print(myArray.reversed() as [Int])
print(myDictionary.reversed()) // Arreglo con los items del diccionario aleatorio
print(mySet.reversed()) // Arreglo con los items del set aleatorio

// Opeaciones last o first
print(myArray.first)
print(myArray.last)

// Para diccionarios y sets solo se puede usar first
print(mySet.first)
print(myDictionary.first)

// Operación Drop
print(myArray.dropLast())
print(myArray.dropFirst())


// Operación Pop
print(myArray.popLast())
print(mySet.popFirst())
print(myDictionary.popFirst())
