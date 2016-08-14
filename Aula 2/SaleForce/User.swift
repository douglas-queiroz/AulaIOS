//
//  User.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import Foundation

class User: Pessoa, Model{
    var login: String?
    var senha: String?
    
    func validar() -> Bool {
        return true
    }
    
    func salvar() {
        
    }
}