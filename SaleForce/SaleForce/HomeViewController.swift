//
//  HomeViewController.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    var cliente: Cliente?
    @IBOutlet weak var lblShow: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(animated: Bool) {
        if let cliente = self.cliente {
            self.lblShow.text = cliente.nome
        }
    }

    @IBAction func onClickButton(sender: AnyObject) {
//        lblShow.text = "Mudou"
        let formViewCtrl = FormViewController()
        formViewCtrl.homeViewCtrlRef = self
        
        self.navigationController?.pushViewController(formViewCtrl, animated: true)
    }
}
