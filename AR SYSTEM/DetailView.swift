//
//  DetailView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI
import SceneKit

struct DetailView: View {
    @State var DetailColor: Color
    @State var ModelImage: String
    @State var ModelName: String
    @State var ModelText: String
    @State var NavigationOrgan: String
    @State var scene: SCNScene?
    @State var organ: String
    @State var scene2: SCNScene?
    @State private var isPresented = false
    
    init(DetailColor: Color, ModelImage: String, ModelName: String, ModelText: String, NavigationOrgan: String, scene: SCNScene? = nil, organ: String) {
        self.DetailColor = DetailColor
        self.ModelImage = ModelImage
        self.ModelName = ModelName
        self.ModelText = ModelText
        self.NavigationOrgan = NavigationOrgan
        self.scene = SCNScene(named: organ)
        self.scene2 = SCNScene(named: organ)
        self.organ = organ
        self.isPresented = isPresented
    }
    
    
    var body: some View {
        ScrollView{
            NavigationView{
                VStack{
                    ZStack{
                        Rectangle().fill(DetailColor).frame(height:400).cornerRadius(25.0).padding()
                        //ARView(scene: $scene).frame(height: 300)
                        CustomSceneView(scene: $scene).frame(height: 250)
                    }//End ZStack
                        HStack{
                            Text(ModelName).bold().font(.system(size: 20.8))
                            
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
                
            }.navigationTitle(NavigationOrgan)//End Navigation View
            Divider()
            VStack{
                    
                    Text(ModelText).fixedSize(horizontal: false, vertical: true)
                    
                
            }.padding()
            
        }//End Scroll View
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(DetailColor: CustomColor.myColor2, ModelImage: "heart", ModelName: "Circulatory System",ModelText: "PROVA PROVA PROVA",NavigationOrgan: "Heart", organ: "Heart.scn")
    }
}
