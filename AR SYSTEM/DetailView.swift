//
//  DetailView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI
import SceneKit

struct DetailView: View {
    @State var DetailColor: Color //Backgorund Color in the DetailView
    @State var TitleDetailView: String //Name of the System
    @State var OrganDescription: String //Description of the System
    @State var scene: SCNScene? //object for AR/3D render
    @State var organ: String //name of the OBJECT
    @State var scene2: SCNScene?
    @State private var isPresented = false //var for the modal
    
    init(DetailColor: Color, ModelName: String, ModelText: String, scene: SCNScene? = nil, organ: String) {
        self.DetailColor = DetailColor
        
        self.TitleDetailView = ModelName
        self.OrganDescription = ModelText
        self.scene = SCNScene(named: organ) //This type of inizialization allow me to pass the correct OBJECT in the detailView
        self.scene2 = SCNScene(named: organ) //unused
        self.organ = organ //The name of the 3D model that is passed to the SCNScene Object
        self.isPresented = isPresented
    }
    
    
    var body: some View {
        ScrollView{
                VStack{
                    ZStack{
                        Rectangle().fill(DetailColor).frame(height:400).cornerRadius(25.0).padding()
                        //ARView(scene: $scene).frame(height: 300)
                        CustomSceneView(scene: $scene).frame(height: 300)
                    }//End ZStack
                        HStack{
                            Text(TitleDetailView).bold().font(.system(size: 20.8))
                            
                            Spacer()
                            
                            Button("AR View") {
                                        isPresented.toggle()
                            }.buttonStyle(.bordered)
                                    .fullScreenCover(isPresented: $isPresented) {
                                        ZStack{
                                            ARView(scene: $scene2).ignoresSafeArea()
                                            VStack{
                                                HStack{
                                                    Spacer()
                                                    ZStack{
                                                        Image(systemName: "xmark.circle.fill").font(.system(size:35)).foregroundColor(.white)
                                                        }.onTapGesture {
                                                            isPresented.toggle()
                                                    }
                                                }
                                                Spacer()
                                            }.padding()
                                        }
                                        
                                    }
                            
                            
                            
                        }//End HStack
                        .padding()
                    
                    
                }//End VStack
                
            Divider()
            VStack{
                    
                    Text(OrganDescription).fixedSize(horizontal: false, vertical: true)
                    
                
            }.padding()
            
        }//End Scroll View
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(DetailColor: CustomColor.myColor2,ModelName: "Circulatory System",ModelText: "PROVA PROVA PROVA", organ: "Heart.scn")
    }
}
