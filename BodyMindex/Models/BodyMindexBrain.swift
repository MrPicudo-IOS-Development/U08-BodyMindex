/* BodyMindexBrain.swift --> BodyMindex. Created by Miguel Torres on 22/01/23. */

import UIKit

struct BodyMindexBrain {
    // Creamos un objeto opcional de tipo BMI.
    var bmi: BMI?
    
    // Función para definir el IMC y su significado
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        // Constantes auxiliares para guardar el IMC y su significado
        let bmiValue: Float
        let color: UIColor
        // Esta constante bmiValue es diferente a la que tenemos en el método de getBMIValue, debido al alcance de las variables.
        bmiValue = weight / pow(height, 2)
        // Estructura condicional para definir el significado del valor obtenido
        if(bmiValue < 18.5) {
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "Eat more snacks!", color: color)
        } else if(bmiValue < 25) {
            color = #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "Keep it up!", color: color)
        } else if(bmiValue < 30) {
            color = #colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "Easy with the snacks", color: color)
        } else if(bmiValue < 40) {
            color = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "You need to lose some weight", color: color)
        } else {
            color = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
            bmi =  BMI(value: bmiValue, advice: "It's important that you lose some weight", color: color)
        }
    }
    
    /* Getters de los atributos que necesitamos pasar al View Controller */
    
    func getBMIValue() -> String {
        // Usamos el método de "Nil coalescing operator" para abrir la variable opcional, dándole un valor por default en caso de que sea nula.
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Advice label"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
    }
    
}


/* Método alternativo para el cálculo del IMC y su retorno:
 
 // Variable que va a guardar el valor del IMC calculado en la siguiente función:
 var bmiValue = "0.0"
 
 // Método para calcular el BMI
 mutating func calculateBMI(height: Float, weight: Float) {
     let bmi = weight / pow(height, 2) // Alternativa: BMI = weight / (height * height)
     // Pasamos el valor del resultado a la variable externa que puede guardar el valor después de finalizarse el método.
     bmiValue = String(format: "%.1f", bmi)
 }
 
 func getBMIValue() -> String {
     return bmiValue
 }
 
 */
