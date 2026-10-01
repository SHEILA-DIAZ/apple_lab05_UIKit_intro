//
//  ViewController.swift
//  Semana05_Desarrollo
//
//  Created by SHEILA DIAZ on 30/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var weightTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = "Introduce tu Peso y Altura"
    }


}

