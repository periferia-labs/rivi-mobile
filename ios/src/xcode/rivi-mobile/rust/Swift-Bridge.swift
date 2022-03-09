//
//  RustGreetings.swift
//  rivi-mobile
//
//  Created by Juuso Haavisto on 9.3.2022.
//

import Foundation

class RustGreetings {
    func sayHello(to: String) -> String {
        let result = rust_greeting(to)
        let swift_result = String(cString: result!)
        rust_greeting_free(UnsafeMutablePointer(mutating: result))
        return swift_result
    }
}
