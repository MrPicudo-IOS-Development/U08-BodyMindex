/* ProgramaticallyVC.swift --> BodyMindex. Created by Miguel Torres on 21/01/23. */

import UIKit

class ProgramaticallyVC: UIViewController {
    
    // Variable o atributo de esta clase, que va a recibir el valor del cálculo de la clase "ViewController"
    var bmiValue = "0.0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // El atributo "view" de todo UIViewController, es la pantalla que se muestra en la interfaz de usuario de la aplicación.
        view.backgroundColor = UIColor.systemGray // Los colores "systemColor" se adaptan al ambiente.
        // Creamos una etiqueta con código, creando el objeto, definiendo sus dimensiones y posición, y finalmente, el texto que contendrá.
        let resultLabel = UILabel()
        resultLabel.frame = CGRect(x: 10, y: 10, width: 150, height: 50)
        resultLabel.text = bmiValue
        // Ya creada la etiqueta con el texto, la tenemos que añadir a la vista
        view.addSubview(resultLabel)
    }
    
}
