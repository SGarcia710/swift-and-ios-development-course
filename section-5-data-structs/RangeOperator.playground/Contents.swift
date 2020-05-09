import UIKit

var exArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

// Operador rango doble lado / Two-sided range operator
var subsetArray = exArray[1...3]
var subsetArray2 = exArray[1..<3]

// Operador rango lado único / One-sided range operator
var subsetArray3 = exArray[...3]
var subsetArray4 = exArray[1...]

// Rango cerrado
var closeRange = [1...5]
closeRange[0]
var closeRangeArray = Array(closeRange)

