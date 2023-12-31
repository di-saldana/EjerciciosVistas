//
//  ViewController.swift
//  EjerciciosVistas
//
//  Created by Máster Móviles on 27/10/23.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var valorSlider: UILabel!
    
    @IBOutlet weak var destinoPickerView: UIPickerView!
    
    let gestorPicker = GestorPicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField.delegate = self
        
        self.textView.backgroundColor = .cyan
        
        self.slider.minimumValue = 0
        self.slider.maximumValue = 100
        self.slider.value = 0
        
        self.destinoPickerView.delegate = self.gestorPicker
        self.destinoPickerView.dataSource = self.gestorPicker
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with: UIEvent?) {
       print("¡touch en la pantalla!")
       //Necesitamos un outlet para acceder al campo de texto.
       //Aquí suponemos que lo hemos llamado "campoDeTexto"
       self.textField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        self.textField.resignFirstResponder()
      return true
    }

    @IBAction func introPulsado(_ sender: UITextField) {
        if let text = sender.text, !text.isEmpty {
            self.textView.text.append("\(text)\n")
        }

        sender.text = ""
        sender.resignFirstResponder()
    }
    
    
    @IBAction func cambiaSlider(_ sender: UISlider) {
        let valorActual = Int(sender.value)
        self.valorSlider.text = "\(valorActual)"
    }
    
    
    @IBAction func mostrarEmergencia(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "¡Emergencia!", message: "Seleccione la opción", preferredStyle: .actionSheet)

        let naveSalvavidasAction = UIAlertAction(title: "Nave salvavidas", style: .default) { _ in
            print("¡¡Lanzada nave salvavidas!!")
        }

        let hiperespacioAction = UIAlertAction(title: "Hiperespacio", style: .default) { _ in
            print("¡¡Entrando en hiperespacio!!")
        }

        let autodestruccionAction = UIAlertAction(title: "Autodestrucción", style: .destructive) { _ in
            print("¡¡Autodestrucción activada!!")
        }

        let cancelar = UIAlertAction(title: "Cancelar", style: .cancel) {
                    action in
                    print("Aquí no se haría nada")
        }

        actionSheet.addAction(naveSalvavidasAction)
        actionSheet.addAction(hiperespacioAction)
        actionSheet.addAction(autodestruccionAction)
        actionSheet.addAction(cancelar)

        self.present(actionSheet, animated: true) {
           print("Ha acabado la animación del action sheet")
        }
    }

}

