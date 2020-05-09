import UIKit

let calcularPromedio = {(notas: [Double]) -> Double in
    var acumulado = Double()
    for nota in notas {
        acumulado += nota
    }
    return acumulado / Double(notas.count)
}

print(calcularPromedio([5.0, 3.8, 4.2, 1.2]))
