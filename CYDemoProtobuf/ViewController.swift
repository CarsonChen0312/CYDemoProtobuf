//
//  ViewController.swift
//  CYDemoProtobuf
//
//  Created by CarsonChen on 2020/3/24.
//  Copyright © 2020 carson. All rights reserved.
//

import UIKit
import ProtocolBuffers

class ViewController: UIViewController {
    
    private lazy var person: Person? = {
        let personBuilder = Person.Builder()
        personBuilder.name = "Carson"
        personBuilder.age  = 27
        personBuilder.gender = "Male"
        return try? personBuilder.build()
    }()

// MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        testProtobuf()
    }
}

// MARK: - Private Methods
extension ViewController {
    
    private func testProtobuf() {
        guard let person = person else { return }
        print(person)
        let encodeData = encode(with: person)
        print(encodeData)
        guard let decodeObj = try? decode(with: encodeData) else { return }
        print(decodeObj)
        guard let builder = try? decodeObj.toBuilder() else { return }
        builder.name = "Tom"
        guard let newDecodeObj = try? builder.build() else { return }
        print(newDecodeObj)
        guard let jsonData = try? newDecodeObj.toJSON() else { return }
        guard let json = try? JSONSerialization.jsonObject(with: jsonData, options: []) else {
            return
        }
        print(json)
        guard let jsonDict = json as? [String: Any] else { return }
        print(jsonDict)
    }
    
    private func encode(with person: Person) -> Data {
        return person.data()
    }
    
    private func decode(with data: Data) throws -> Person {
        return try Person.parseFrom(data: data)
    }
}
