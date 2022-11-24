//
//  AR_View.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 22/11/22.
//

import SwiftUI
import ARKit


struct ARView: UIViewRepresentable{
    
    @Binding var scene: SCNScene?
    
    func makeUIView(context: Context) -> some UIView {
        let sceneView = ARSCNView(frame: UIScreen.main.bounds)
        sceneView.showsStatistics = false
        sceneView.allowsCameraControl = false
        sceneView.autoenablesDefaultLighting = true
        sceneView.antialiasingMode = .multisampling2X
        sceneView.scene = scene!
        
        let configuration = ARWorldTrackingConfiguration()
        sceneView.session.run(configuration)
        
        return sceneView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    
    
    
    
    
}




struct AR_View_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
