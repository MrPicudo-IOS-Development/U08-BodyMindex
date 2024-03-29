/* ViewController.swift --> BodyMindex. Created by Miguel Torres on 17/01/23. */

import UIKit

class CalculateViewController: UIViewController {

    // InterfaceBuilderOutlets para las etiquetas que muestran la altura y el peso.
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    // InterfaceBuilderOutlets para tener acceso a los atributos de los Sliders.
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    // Creamos un objeto de la estructura BodyMindexBrain para poder acceder a los valores calculados.
    var bodyMindexBrain = BodyMindexBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Cargamos los valores iniciales de los Sliders.
        heightLabel.text = "\(Int(heightSlider.value)) cm"
        weightLabel.text = "\(String(format: "%.1f", weightSlider.value)) kg"
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
        // Obtenemos los valores que se definieron con los Sliders
        let height = heightSlider.value/100
        let weight = weightSlider.value
        // Mandamos a llamar al método calculateBMI de la estructura BodyMindexBrain con estos valores
        bodyMindexBrain.calculateBMI(height, weight)
        
        /* Código creado para la vista UIViewController creada con código:
        // Creamos un objeto de la clase del nuevo UIViewController, para poder "presentarlo" desde la clase principal.
        let programaticallyVC = ProgramaticallyVC()
        // Pasamos el valor obtenido de nuestro cálculo, al atributo "bmiValue" de la nueva clase UIViewController.
        programaticallyVC.bmiValue = String(format: "%.1f", BMI)
        // Presentamos en forma "modally" el objeto programaticallyVC en la interfaz.
        self.present(programaticallyVC, animated: true)
         */
        
        // Hacemos la transición del segue creado con la siguiente línea de código:
        self.performSegue(withIdentifier: "goToResults", sender: self)
    }
    
    // Función para preparar cualquier ViewController que sea iniciado por un segue:
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if(segue.identifier == "goToResults") {
            // Creamos la referencia a la vista que se activa cuando presionamos el botón de CALCULATE.
            let referenceVCResults = segue.destination as! ResultsViewController
            // Usamos esa referencia para mandar el valor que calculamos en el método calculatePressed.
            referenceVCResults.bmiValue = bodyMindexBrain.getBMIValue()
            referenceVCResults.advice = bodyMindexBrain.getAdvice()
            referenceVCResults.color = bodyMindexBrain.getColor()
        }
    }
    
}

