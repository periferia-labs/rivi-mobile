//
//  ContentView.swift
//  rivi-mobile
//
//  Created by Juuso Haavisto on 8.3.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let rustGreetings = RustGreetings()
        Text(rustGreetings.sayHello(to: "world"))
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
