//
//  AddAcount.swift
//  Domain
//
//  Created by Cátia Souza on 18/01/21.
//

import Foundation

public protocol AddAcount {
    func add(addAccountModel: AddAccountModel, completion: @escaping (Result<AccountModel, DomainError>) -> Void)
}
public struct AddAccountModel: Model {
    public  var name: String
    public var email: String
    public var password: String
    public var passawordConfirmation: String
    
    public init(name: String, email: String, password: String, passawordConfirmation: String) {
        self.name = name
        self.email = email
        self.password = password
        self.passawordConfirmation = passawordConfirmation
    }
}

