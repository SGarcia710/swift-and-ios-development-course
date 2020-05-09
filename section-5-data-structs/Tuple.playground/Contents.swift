import UIKit

var persona = ("Sebastián", "García", 23, 1.70)
persona.0
var (nombre, apellido, edad, estatura) = persona
nombre

// Named Tuples
var personaNamedTuple = (nombre: "Luisa", apellido: "Prada", edad: 23, estatura: 1.65)
personaNamedTuple.nombre
