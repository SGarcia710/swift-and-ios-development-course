import Foundation

// Comparación
let name1 = "Sebas"
let name2 = "Sebastian"
let name3 = "Sebas"

name1 == name2 // False
name1 == name3 // True

// Contenido
let myContent = "Mi nombre es Sebas"
myContent.contains(name1)

// Vacía
let myEmptyString = ""
myEmptyString.isEmpty

// Recorrido
for valor in myContent {
    print(valor)
}
