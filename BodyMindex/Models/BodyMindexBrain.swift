/* BodyMindexBrain.swift --> BodyMindex. Created by Miguel Torres on 22/01/23. */

import Foundation

struct BodyMindexBrain {
    // Creamos un objeto opcional de tipo BMI.
    var bmi: BMI?
    
    func getBMIValue() -> String {
        // Usamos el método de "Nil coalescing operator" para abrir la variable opcional, dándole un valor por default en caso de que sea nula.
        let bmiValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiValue
    }
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        bmi?.value = weight / pow(height, 2)
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
