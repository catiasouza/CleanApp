//
//  TestFactory.swift
//  DataTests
//
//  Created by Cátia Souza on 20/01/21.
//

import Foundation


func makeInvalidData() -> Data {
    return Data("ivalid_data".utf8)
}
func makeValidData() -> Data {
    return Data("{\"name\":\"Catia\"}".utf8)
}

func makeUrl() -> URL {
    return URL(string:"http://any-url.com")!
}
