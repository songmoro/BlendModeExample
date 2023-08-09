//
//  ContentView.swift
//  BlendModeExample
//
//  Created by 송재훈 on 2023/08/09.
//

import SwiftUI

struct ContentView: View {
    @State var blendState: BlendMode = BlendMode.normal
    
    var body: some View {
        VStack {
            Picker(selection: $blendState) {
                ForEach(BlendMode.allCases, id: \.self) { state in
                    Text(state.state)
                }
            } label: { }

            ZStack {
                Circle()
                    .fill(.red)
                    .frame(width: 200, height: 200)
                    .offset(x: -50)
                
                Circle()
                    .fill(.blue)
                    .frame(width: 200, height: 200)
                    .offset(x: 50)
                    .blendMode(blendState)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
