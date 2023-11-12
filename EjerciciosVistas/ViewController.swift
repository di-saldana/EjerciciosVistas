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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField.delegate = self
        
        self.textView.backgroundColor = .cyan
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
    
}

