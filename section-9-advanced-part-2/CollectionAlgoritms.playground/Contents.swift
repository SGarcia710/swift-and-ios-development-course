import Foundation

// Algoritmos para colecciones
var myArray = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]
let myDictionary = [
    5: "Cinco", 8: "Ocho", 1: "Uno", 0: "Cero", 3: "Tres", 9: "Nueve", 7: "Siete", 2: "Dos", 4: "Cuatro", 6: "Seís"
]
let mySet: Set = [5, 8, 1, 0, 3, 9, 7, 2, 4, 6]

/* Sort
print(myArray)
myArray.sort()
print(myArray)

// Sort no sirve para diccionarios ni sets.

// Sort by

myArray.sort {
    (intA, intB) -> Bool in
        return intA > intB
}
print(myArray)
*/

// Sorted: Este devuelve un nuevo Array ordenado y sirve para todas las colecciones

print(myArray)
var myArraySorted = myArray.sorted()
print(myArray)
print(myArraySorted)

myArraySorted = myArray.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(myArraySorted)

// Sorted con diccionarios
var mySortedDictionary = myDictionary.sorted { (elementA, elementB) -> Bool in
    return elementA.key > elementB.key
}
print(mySortedDictionary)

// Sorted con sets
var mySortedSet = mySet.sorted()
print(mySortedSet)
mySortedSet = mySet.sorted { (intA, intB) -> Bool in
    return intA > intB
}
print(mySortedSet)
