//
//  RemoteAddAccount.swift
//  Data
//
//  Created by Cátia Souza on 19/01/21.
//

import Foundation
import  Domain

public final class RemoteAddAccount: AddAcount {
    private let url: URL
    private let httpClient: HttpPostClient
    
    public init(url: URL, httpClient: HttpPostClient) {
        self.url = url
        self.httpClient = httpClient
    }
    public func add(addAccountModel: AddAccountModel, completion: @escaping(Result<AccountModel, DomainError>) -> Void) {
        httpClient.post(to: url, with: addAccountModel.toData()) { error in
            completion(.failure(.unexpected))
        }
    }
}
