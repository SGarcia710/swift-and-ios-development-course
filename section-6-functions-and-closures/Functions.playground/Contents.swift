import UIKit

// Función
func cuadradoDe(numero:Int) {
    let resultado = numero * numero;
    print(resultado);
}

cuadradoDe(numero: 12)

// función con retorno
func cuboDe(numero:Int) -> Int {
    let resultado = numero * numero * numero;
    return resultado;
}

print(cuboDe(numero: 10))

// Valores default en parametros
func saludarAlumno(nombre: String, mensaje: String = "¿Bien o no?") -> String {
    return "\(mensaje), \(nombre)"
}

print(saludarAlumno(nombre: "Sebastián"))

// Retornar multiples valores
func listaNombres () -> [String] {
    return ["Pedro", "Sebastián", "Luisa"]
}

print(listaNombres())

// Nombre de parametros internos y externos
func calificacionPromedio(uno corteUno: Double, dos corteDos: Double, _ corteTres: Double) -> Double {
    return (corteUno + corteDos + corteTres) / 3
}

print("Mi promedio es \(calificacionPromedio(uno: 3, dos: 4, 5))")
