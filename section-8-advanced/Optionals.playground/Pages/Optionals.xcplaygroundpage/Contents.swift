import Foundation


// Opcionales
let myStringNumber = "100"
let myIntNumber = Int(myStringNumber)

let myWrongStringNumber = "Sebastián"
let myWrongIntNumber = Int(myWrongStringNumber)

var myOptionalString: String?
print(myOptionalString)


if myOptionalString != nil {
    print("Nuestra variable tiene un valor distinto de nulo")
} else {
    print("Nuestra variable es nula")
}
