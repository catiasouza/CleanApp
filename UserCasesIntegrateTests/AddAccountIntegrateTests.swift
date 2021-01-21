//
//  UserCasesIntegrateTests.swift
//  UserCasesIntegrateTests
//
//  Created by Cátia Souza on 21/01/21.
//

import XCTest
import Data
import Infra
import Domain

class AddAccountIntegrateTests: XCTestCase {

    func test_add_account(){
        let alamofireAdapter = AlamofireAdapter()
        let url = URL(string: "https://clean-node-api.herokuapp.com/api/signup")!
        let sut = RemoteAddAccount(url: url, httpClient: alamofireAdapter)
        let addAccountModel = AddAccountModel(name: "Catia Souza", email: "catiamsouza80@gmail.com", password: "3006", passawordConfirmation: "3006")
        let exp = expectation(description: "waiting")
        sut.add(addAccountModel: addAccountModel) { result in
            switch result {
            case .failure: XCTFail("Expected success got \(result) instead")
            case .success(let account):
                XCTAssertNotNil(account.id)
                XCTAssertEqual(account.name, addAccountModel.name)
                XCTAssertEqual(account.email, addAccountModel.email)
            }
            exp.fulfill()
        }
        wait(for: [exp], timeout: 5)
    }

    

}
