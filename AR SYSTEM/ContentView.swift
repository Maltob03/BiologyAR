//
//  ContentView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    @State var scene: SCNScene? = .init(named: "Heart.scn")
    var body: some View {
        VStack {
            CustomSceneView(scene: $scene).frame(height: 300)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
