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

func makeEmptyData() -> Data {
    return Data()
}
func makeValidData() -> Data {
    return Data("{\"name\":\"Catia\"}".utf8)
}

func makeUrl() -> URL {
    return URL(string:"http://any-url.com")!
}
func makeError() -> Error {
    return NSError(domain: "any_error", code: 0)
}
func makeHttpResponse(statusCode: Int = 200) -> HTTPURLResponse {
   return HTTPURLResponse(url: makeUrl(), statusCode: statusCode, httpVersion: nil, headerFields: nil)!
}
