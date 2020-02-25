//
//  ContentView.swift
//  layout_swiftui
//
//  Created by Георгий Каспарьянц on 24.02.2020.
//  Copyright © 2020 Георгий Каспарьянц. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("Hello, World!").background(Color.red)
            Divider()
            Text("high")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
