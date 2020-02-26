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
                }.frame(minWidth: 0, maxWidth: 100, minHeight: 0, maxHeight: 100, alignment: .center)
            }.background(Color.green).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
