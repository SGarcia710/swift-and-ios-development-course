import Foundation

// Type casting: Validación de tipos de dato

let myString = "Sebastián"
let myAge = 23

class MyClass {
    var name: String!
    var age: Int!
}

let myClass = MyClass()
myClass.name = "Sebastián García"
myClass.age = 23

let myArray: [Any] = [myString, myAge, myClass]


for item in myArray {
    // Type Casting
    if item is String {
        // Downcasting
        let myItemString = item as! String
        print("Es un string: \(myItemString)")
    } else if item is Int {
        // Downcasting
        let myItemInt = item as! Int
        print("Es un número: \(myItemInt)")
    } else if item is MyClass {
        // Downcasting
        let myItemMyClass = item as! MyClass
        print("Es un objeto de tipo MyClass con las sigueintes propiedades: \(myItemMyClass.name!) \(myItemMyClass.age!).")
    }
}


for item in myArray {
    // De esta manera se hace más rápido el type casting y downcasting. Desempaquetando directamente el tipo de dato.
    if let myItemString = item as? String {
      print("Es un string: \(myItemString)")
    } else if let myItemInt = item as? Int {
        print("Es un número: \(myItemInt)")
    } else if let myItemMyClass = item as? MyClass {
        print("Es un objeto de tipo MyClass con las sigueintes propiedades: \(myItemMyClass.name!) \(myItemMyClass.age!).")
    }
}
