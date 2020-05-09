import Foundation

/* Sets: Conjuntos Mezcla entre arrays y diccionarios.
 
 Podemos añadir valores de un único tipo, igual que en los arrays, pero estos valores no estarán ordenados, como los diccionarios.
 
 Los valores no podrán estar repetidos.
*/

// Declaración
var mySet = Set<String>()
let mySet2: Set<Int> = []
let mySet3: Set<Int> = [1, 2, 3, 4, 55]


// Insertar de uno en uno
mySet.insert("Sebastián")
mySet.insert("García")
mySet.insert("23")
mySet.insert("Programador")
mySet

// Acceso
if mySet.contains("Sebastián") {
    print("Existe")
} else {
    print("No existe")
}

// Modificación
mySet.remove("23")
mySet

// Acceso y modificación por indice
if let nameIndex = mySet.firstIndex(of: "Sebastián") {
    mySet.remove(at: nameIndex)
}
mySet

// Iterar en sets
mySet.insert("Sebastián")
mySet.insert("React")
mySet.insert("Nodejs")
mySet.insert("Natalia")

for e in mySet {
    print(e)
}

// Operaciones de conjuntos
let myIntSet: Set<Int> = [12, 22, 24, 14]
let myIntSet2: Set<Int> = [12, 44, 234, 14]

// Intersección
let intersectionSet = myIntSet.intersection(myIntSet2)
 
// Diferencia simetrica
let simetricDifferenceSet = myIntSet.symmetricDifference(myIntSet2)

// Unión
let  unionSet = myIntSet.union(myIntSet2)

// Sustracción
let subtractingSet1 = myIntSet.subtracting(myIntSet2)
let subtractingSet2 = myIntSet2.subtracting(myIntSet)
