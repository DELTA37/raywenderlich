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
        ZStack {
            Color.red
            VStack(alignment: .center) {
                HStack(alignment: .center) {
                    Text("Hello, Red World!").background(Color.red).edgesIgnoringSafeArea(.all)
                    Text("Hello, Blue World!").background(Color.blue)
                }
                Divider()
                HStack(alignment: .center) {
                    Text("high").background(Color.blue)
                }
            }.background(Color.green)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
