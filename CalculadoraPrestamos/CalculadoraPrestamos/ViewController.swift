//
//  ViewController.swift
//  CalculadoraPrestamos
//
//  Created by SHEILA DIAZ on 30/09/26.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var capitalTextField: UITextField!
    @IBOutlet weak var tasaTextField: UITextField!
    @IBOutlet weak var plazoTextField: UITextField!
    @IBOutlet weak var cuotaLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        cuotaLabel.text = "Introduce los datos del préstamo"
        totalLabel.text = "-"
    }


}

