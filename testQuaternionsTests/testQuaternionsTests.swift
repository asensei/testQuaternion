//
//  testQuaternionsTests.swift
//  testQuaternionsTests
//
//  Created by William Burgar on 14/06/2016.
//  Copyright © 2016 asensei inc. All rights reserved.
//


// xcodebuild -scheme testQuaternions -destination "platform=iOS,name=Bill's iPhone 5S" build test
// xcodebuild -scheme testQuaternions -sdk iphonesimulator build test



import XCTest
@testable import testQuaternions
import GLKit

class QuaternionContainer {
    
    var quaternion : GLKQuaternion = GLKQuaternionIdentity
    
    init(quaternion: GLKQuaternion) {
        self.quaternion = quaternion
    }
}



class testQuaternionsTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    

    
    func printQuaternion(q: GLKQuaternion) {
        print("Quaternion:  x:\(q.v.x), y:\(q.v.y), z:\(q.v.z), w:\(q.s),")
    }
    
    
    func testQuaternionMake() {
        
        let q = GLKQuaternionMake(1, 0, 1, 0)
        printQuaternion(q)

        let b = QuaternionContainer(quaternion: q)
        printQuaternion(b.quaternion)
        print("quaternion result : \(b)")

        XCTAssertEqual(b.quaternion.v.x, 1.0)
        
    }
}
