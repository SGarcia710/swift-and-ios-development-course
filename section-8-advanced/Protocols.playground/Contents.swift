import Foundation

// Protocolo: sirve para definir un modelo de métodos, propiedades y otros requisitos, para que una clase, una estructura o una enumeración se adapten a ellos.
// Dicho de otra manera un protocolo va a ayudar a una clase, estructura o enumeración a que adopte una serie de propiedades o funciones.

protocol PersonProtocol {
    var name: String { get set }
    var age: Int { get set}
    
    func fullName() -> String
}


struct Programmer: PersonProtocol {
    func fullName() -> String {
        return "El nombre es \(name), su edad es: \(age) y su lenguaje favorito es \(language)"
    }
    
    var name: String
    var age: Int
    
    var language: String
}

struct Teacher: PersonProtocol {
    func fullName() -> String {
        return "El nombre es \(name), su edad es: \(age) y la asignatura que imparte es es \(subject)"
    }
    
    var name: String
    var age: Int
    
    var subject: String
}


let myProgrammer = Programmer(name: "Sebastián", age: 23, language: "JavaScript")
let myTeacher = Teacher(name: "Sebastián García", age: 23, subject: "Algortimos y Programación")

print(myProgrammer.fullName())
print(myTeacher.fullName())

// protocolo delegado: se usa para comunicar dos clases en sentido inverso.
// Es para cuando tenemos que notificar a la clase anterior pero de una forma asincrona, es decir que no se sabe cuando se debe notificar

class FirtClass: SecondClassProtocol {
    func call() {
        print("Estoy devuelta")
    }
    
    func callSecond() {
        let secondClass = SecondClass()
        // ¿Donde implementaremos el protocolo delegado? ¿Donde va a delegar la funcionalidad de la segunda clase? Pues va a delegar en la primera que es donde queremos recibir esa notificación.
        secondClass.delegate = self
        secondClass.callFirst()
    }
}

protocol SecondClassProtocol {
    func call ()
}


class SecondClass {
    
    var delegate: SecondClassProtocol?
    
    func callFirst() {
        sleep(5)
        delegate?.call()
    }
}

let firstClass = FirtClass()
firstClass.callSecond()
 
