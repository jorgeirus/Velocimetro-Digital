//: Playground - noun: a place where people can play

import UIKit

// Enumeracion para las velocidades con sus respectivos valores



enum Velocidades: Int{
    case Apagado = 0, VelocidadBaja = 20, VelocidadMedia = 50, VelocidadAlta = 120
    
// Se declara un inicializador para Velocidad Inicial de tipo enumeración
    
// y Se asigna a self
    
    init(velocidadInicial: Velocidades){
        self = velocidadInicial
    }
}

// Se crea una clase llamada Auto
class Auto {
    // Se instancia una variable llamada velocidad del tipo de la enumeración (Velocidades)
    var velocidad : Velocidades
    
    // Se declara una funcion inicializadora
   
    init(){
        //se crea la instancia  de Velocidades iniciando en apagado
        velocidad = Velocidades(velocidadInicial: .Apagado)
    }
   // se declara una función cambioDeVelocidad() y con las iteraciones de cada cambio Apagado cambia a VelocidadBaja, de VelocidadBaja cambia a VelocidadMedia, es decir cada ejecución cambia a la siguiente velocidad.. si llega a VelocidadAlta cambia a VelocidadMedia. Finalmente, la función debe regresar una tupla con la velocidad actual y una cadena con la leyenda de la velocidad correspondiente.
    
    // se utilizo un switch para cada caso
    
    func cambioDeVelocidad()->(actual: Int, velocidadEnCadena: String){
        var actual : Int
        var velocidadEnCadena : String
        
        actual = velocidad.rawValue
        
        switch velocidad{
        case .Apagado:
            velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            velocidad = Velocidades.VelocidadMedia
            velocidadEnCadena = "Velocidad baja"
        case .VelocidadMedia:
            velocidad = Velocidades.VelocidadAlta
            velocidadEnCadena = "Velocidad media"
        case .VelocidadAlta:
            velocidad = Velocidades.Apagado
            velocidadEnCadena = "velocidad Alta"
        }
        // retorna el valor actual y su valor cadena
        return(actual, velocidadEnCadena)
    }
}


//se crea la instancia de la clase llamada de auto
var auto = Auto()

//se crea un ciclo que itera 20 veces la llamada a la funcion Cambio de velocidad y se imprimen los resultados en consola

for var i = 1; i <= 20; i++ {
    
    var control = auto.cambioDeVelocidad()
    print("\(i). \(control.actual), \(control.velocidadEnCadena)")
    

}




