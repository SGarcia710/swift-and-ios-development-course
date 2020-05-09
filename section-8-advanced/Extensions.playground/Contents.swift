import Foundation

// Extensiones
let myMeters: Double = 5000

func metersToKm(meters: Double) -> Double {
    return meters / 1000
}

print(metersToKm(meters: myMeters))


// Crear una extensión: Agregar nuevas funcionalidades a algo.
extension Double {
    var cm: Double {
        return self * 100
    }
    // Se asume que se recibe siempre el dato en metros
    var m: Double {
        return self
    }
    
    var km: Double  {
        return self / 1000
    }
}

print(myMeters.km)
print(myMeters.cm)
