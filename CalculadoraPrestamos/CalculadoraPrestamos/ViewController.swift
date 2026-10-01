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

    @IBAction func CalcularPrestamo(_ sender: Any) {
        // Obtener los valores de capital, tasa anual y plazo
        let capital = Double(capitalTextField.text ?? "") ?? 0
        let tasaAnual = Double(tasaTextField.text ?? "") ?? 0
        let plazoAnios = Double(plazoTextField.text ?? "") ?? 0

        // Verificar si los valores de entrada son válidos
        if capital <= 0 || tasaAnual <= 0 || plazoAnios <= 0 {
            cuotaLabel.text = "Por favor, ingresa valores válidos."
            totalLabel.text = "-"
            return
        }

        // r: tasa de interés mensual (interés anual dividido entre 12 meses)
        let r = (tasaAnual / 100) / 12
        // n: número total de pagos (número de años multiplicado por 12)
        let n = plazoAnios * 12

        // M = P × r(1 + r)^n / ((1 + r)^n − 1)
        let factor = pow(1 + r, n)
        let cuotaMensual = capital * (r * factor) / (factor - 1)

        // Monto total a pagar: cuota mensual multiplicada por el número total de pagos
        let montoTotal = cuotaMensual * n

        // Mostrar el resultado
        cuotaLabel.text = String(format: "%.2f", cuotaMensual)
        totalLabel.text = String(format: "%.2f", montoTotal)
    }


}

