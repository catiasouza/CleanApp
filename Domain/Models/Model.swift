//
//  Model.swift
//  Domain
//
//  Created by Cátia Souza on 19/01/21.
//

import Foundation

public protocol Model: Encodable {
    
}
public extension Model {
    func toData() -> Data? {
        return try? JSONEncoder().encode(self)
    }
}
