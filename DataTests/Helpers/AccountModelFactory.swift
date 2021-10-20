//
//  AccountModelFactory.swift
//  DataTests
//
//  Created by Cátia Souza on 20/01/21.
//

import Foundation
import Domain


func makeAccountModel() -> AccountModel {
    return AccountModel(id: "any_id", name: "any_string", email: "any_email@gmail.com", password: "any_password")
}
