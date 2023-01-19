/* ViewController.swift --> BodyMindex. Created by Miguel Torres on 17/01/23. */

import UIKit

class ViewController: UIViewController {

    // InterfaceBuilderOutlets para las etiquetas que muestran la altura y el peso.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    // InterfaceBuilderOutlets para tener acceso a los atributos de los Sliders.
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Acción que realiza el Slider de height al moverlo.
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        // Usamos String(format: "%.nf", floatNumber) para definir el número de cifras decimales que queramos.
        // print(Int(sender.value)) // Alternativa: String(format: "%.0f", sender.value)
        heightLabel.text = "\(Int(sender.value)) cm"
        
    }
    
    // Acción que realiza el Slider de weight al moverlo.
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        // print(String(format: "%.1f", sender.value))
        weightLabel.text = "\(String(format: "%.1f", sender.value)) kg"
    }
    
    // Acción que realiza el botón "CALCULATE" al ser presionado.
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value/100
        let weight = weightSlider.value
        let BMI = weight / pow(height, 2) // Alternativa: BMI = weight / (height * height)
        print(BMI)
    }
    
}

