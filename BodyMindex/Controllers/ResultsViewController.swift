/* ResultsViewController.swift --> BodyMindex. Created by Miguel Torres on 21/01/23. */

import UIKit

class ResultsViewController: UIViewController {
    
    // Variables que reciben valores del archivo CalculateViewController, que a su vez los obtiene del BodyMindexBrain.
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    // Variables de conexión a la interfaz
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Mostramos los valores que fueron recibidos del View Controller, en la interfaz.
        messageLabel.textColor = color
        bmiLabel.textColor = color
        bmiLabel.text = bmiValue
        adviceLabel.textColor = color
        adviceLabel.text = advice
        // view.backgroundColor = color
        
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
