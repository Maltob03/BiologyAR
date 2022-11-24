//
//  ModelViewerScreen.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 22/11/22.
//

import SwiftUI
import ARKit

struct ModelViewerScreen: View {
    
    @State var organ: String
    @State var scene2: SCNScene?
    @State private var isPresented = false
    
    init(organ: String, scene2: SCNScene? = nil, isPresented: Bool = false) {
        self.organ = organ
        self.scene2 = SCNScene(named: organ)
        self.isPresented = isPresented
    }
    
    var body: some View {
        ZStack{
            Button("AR View") {
                        isPresented.toggle()
                    }
                    {}
            ARView(scene: $scene2)
        }
    }
}

struct ModelViewerScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
