//
//  GestorPicker.swift
//  EjerciciosVistas
//
//  Created by Dianelys Saldaña on 11/12/23.
//

import UIKit

class  GestorPicker : NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    let destinos = ["Saturno", "M13", "Nebulosa de Orión", "Otro Destino"]
    
    //METODOS DE UIPickerViewDatasource
    //número de "columnas" del Picker
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    //número de "filas"
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return destinos.count
    }

    //METODOS DE UIPickerViewDelegate
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return destinos[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let selectedDestino = destinos[row]
        print("Destino seleccionado: \(selectedDestino)")
    }
}
