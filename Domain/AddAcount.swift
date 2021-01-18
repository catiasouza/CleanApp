//
//  AddAcount.swift
//  Domain
//
//  Created by Cátia Souza on 18/01/21.
//

import Foundation

protocol AddAcount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, Error>) -> Void)
}
struct AddAccountModel {
    var name: String
    var email: String
    var password: String
    var passawordConfirmation: String
}

