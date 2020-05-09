import UIKit

// Definición de tipos de errores
enum SumError: Error {
    case firstNumberNil
    case secondNumberNil
    case negativeNumber(firstNumber: Int, secondNumber: Int)
}

// Error handling (Manejo de errores)
func sum(_ firstNumber: Int?, _ secondNumber: Int?) throws -> Int{
    // Lanzar los errores
    if firstNumber == nil {
        throw SumError.firstNumberNil
    } else if secondNumber == nil {
        throw SumError.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumError.negativeNumber(firstNumber: firstNumber!, secondNumber: secondNumber!)
    }
    
    // Se hace la suma al final de que todo esté bien
    return firstNumber! + secondNumber!
}

// Propagación de errores

do {
    print(try sum(2, -2))
} catch SumError.firstNumberNil {
    print("El primer número es nulo")
} catch SumError.secondNumberNil {
     print("El segundo número es nulo")
} catch SumError.negativeNumber(let firstNumber, let secondNumber) {
    print("Alguno de los números es negativo. Número uno: \(firstNumber), número dos: \(secondNumber).")
}

