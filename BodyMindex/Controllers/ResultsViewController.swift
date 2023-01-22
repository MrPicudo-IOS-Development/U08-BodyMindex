/* ResultsViewController.swift --> BodyMindex. Created by Miguel Torres on 21/01/23. */

import UIKit

class ResultsViewController: UIViewController {
    
    // Variable que recibe el valor del IMC calculado en el archivo CalculateViewController.swift
    var bmiValue: String?
    
    // Variables de conexión a la interfaz
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Mostramos el valor que fue recibido de la clase sender, en el texto de la etiqueta de esta vista.
        bmiLabel.text = bmiValue
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        // Este método nos sirve para cerrar la vista actual (no es necesario usar self.) y regresar a la vista sender.
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
