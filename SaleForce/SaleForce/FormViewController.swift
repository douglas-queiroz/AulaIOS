//
//  FormViewController.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var txtNome: UITextField!
    @IBOutlet weak var txtCpf: UITextField!
    
    var homeViewCtrlRef: HomeViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func actionEnviar(sender: AnyObject) {
        let cliente = Cliente()
        cliente.nome = txtNome.text
        cliente.CpfCnpj = txtCpf.text
        
        homeViewCtrlRef.cliente = cliente
        
        self.navigationController?.popViewControllerAnimated(true)
    }
}
