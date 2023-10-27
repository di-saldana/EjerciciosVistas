//
//  ViewController.swift
//  EjerciciosVistas
//
//  Created by Máster Móviles on 27/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func introPulsado(_ sender: UITextField) {
        sender.resignFirstResponder()
    }
    
}

