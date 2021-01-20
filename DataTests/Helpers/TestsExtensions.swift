//
//  TestsExtensions.swift
//  DataTests
//
//  Created by Cátia Souza on 20/01/21.
//

import Foundation
import XCTest


extension XCTestCase {
    func checkMemoryLeak(for instance: AnyObject, file: StaticString = #file, line: UInt = #line) {
        addTeardownBlock { [weak instance] in
            XCTAssertNil(instance,  file: file, line: line)
        }
    }
}
