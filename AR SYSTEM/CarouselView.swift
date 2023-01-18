//
//  CarouselView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 17/11/22.
//

import SwiftUI
import SceneKit

struct CarouselView: View {
    @State private var index = 0
    @State private var searchText = ""
    @State var scene: SCNScene? = .init(named: "Heart.scn")
    
    var body: some View {
            VStack{
                TabView(selection: $index) {
                    
                    NavigationLink(destination: DetailView(DetailColor: CustomColor.myColor3, ModelName: "Prova3",ModelText: "The human brain is the central organ of the human nervous system, and with the spinal cord makes up the central nervous system. The brain consists of the cerebrum, the brainstem and the cerebellum. It controls most of the activities of the body, processing, integrating, and coordinating the information it receives from the sense organs, and making decisions as to the instructions sent to the rest of the body. The brain is contained in, and protected by, the skull bones of the head.", organ: "Brain.scn" )) {
                        SingleCardView(HeaderTextSquare: "Nervous System", ImageAssetName: "brain",color: CustomColor.myColor3)
                    }.tag(1)
                        
                        
                        
                    
                    NavigationLink(destination: DetailView(DetailColor: CustomColor.myColor, ModelName: "Circulatory",ModelText: "The heart is a muscular organ in most animals. This organ pumps blood through the blood vessels of the circulatory system.The pumped blood carries oxygen and nutrients to the body, while carrying metabolic waste such as carbon dioxide to the lungs. In humans, the heart is approximately the size of a closed fist and is located between the lungs, in the middle compartment of the chest.",organ: "Heart.scn")) {
                        SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "heart",color: CustomColor.myColor)
                    }.tag(2)
                    
                    
                    NavigationLink(destination: DetailView(DetailColor: CustomColor.myColor2, ModelName: "Lungs",ModelText: "The lungs are the primary organs of the respiratory system in humans and most other animals, including some snails and a small number of fish. In mammals and most other vertebrates, two lungs are located near the backbone on either side of the heart. Their function in the respiratory system is to extract oxygen from the air and transfer it into the bloodstream, and to release carbon dioxide from the bloodstream into the atmosphere, in a process of gas exchange. ",organ: "Lungs.scn" ).padding()) {
                        SingleCardView(HeaderTextSquare: "Circulatory System", ImageAssetName: "lungs",color: CustomColor.myColor2).padding()
                    }.tag(3)
                    
                        
                }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
                    .frame(height: 376)
            }
    }
}

struct CarouselView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselView()
    }
}
