//
//  Model.swift
//  SaleForce
//
//  Created by Douglas Queiroz on 8/6/16.
//  Copyright © 2016 Douglas Queiroz. All rights reserved.
//

import Foundation

protocol Model {
    func validar() -> Bool
    func salvar()
}