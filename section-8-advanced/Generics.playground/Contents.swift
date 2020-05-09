import Foundation

/* Génericos */

// inout indica paso por referencia
// Función sin génericos
func swapTwoInts (a: inout Int, b: inout Int) {
    let tempA = a;
    a = b
    b = tempA
}

var myFirstInt = 5
var mySecondInt = 10
print(myFirstInt, mySecondInt)

swapTwoInts(a: &myFirstInt, b: &mySecondInt)
print(myFirstInt, mySecondInt)


// Función con génericos
func swapTwoGenerics<T> (a: inout T, b: inout T) {
    let tempA = a;
    a = b
    b = tempA
}
var myFirstGeneric = "Sebastián"
var mySecondGeneric = "Amelia"
print(myFirstGeneric, mySecondGeneric)

swapTwoGenerics(a: &myFirstGeneric, b: &mySecondGeneric)
print(myFirstGeneric, mySecondGeneric)
