import Foundation

// Enlaces opcionales

var myOptionalString: String?
var myOptionalString2: String?

myOptionalString = "Sebas"

// Sirve para detectar si una variable opcional tiene un valor no nulo
if let myString = myOptionalString, let myString2 = myOptionalString2 {
    // Esto solo se ejecuta únicamente cuando la variable(s) opcional(es) sea(n) distinta(s) de nulo
    print(myString)
} else {
    print("Opcional nulo")
}

// Desempaquetado forzado
// Si en algún punto de nuestro código nos damos cuenta que una variable definida como nula, ahora tiene valor. Si estamos totalmente seguros de que no sea nulo, podemos desempaquetar esa variable forzadamente

print(myOptionalString!)
