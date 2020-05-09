import Foundation

// Sentencia de salida rápida guard let

var myOptionalString: String?

func myFunction() {
    guard let myString = myOptionalString else {
        print("myString es nulo ")
        return
    }
    print("El valor de myString es \(myString)")
}

myFunction()

myOptionalString = "Este curso es genial"

myFunction()
