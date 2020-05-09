import UIKit

var counter = 0

for num in 1..<4 {
    print(num)
}

var countries = ["MX", "EUA", "JP"]

for country in countries {
    print(country)
}

var countriesDictionary  = ["MX": "México", "EUA": "Estados Unidos de América", "JP": "Japón"]

for (code, countryName) in countriesDictionary {
    print(code, countryName)
}

var numbers = [1,2,3,4,5,6,7,8,9]
var total = 0

for num in numbers {
    total += num
}

print("La suma total es de \(total)")
