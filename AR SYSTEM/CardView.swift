//
//  CardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//



import SwiftUI

//Struct for custom color
struct CustomColor {
    static let myColor = Color("CardColor1")
    static let myColor2 = Color("CardColor2")
    static let myColor3 = Color("CardColor3")
}

struct CardView: View {
    @State private var index = 0
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        NavigationView(){
            ScrollView(.vertical){
                VStack{
                    if(horizontalSizeClass == .compact){
                        CarouselView().padding(.top)
                    }
                    else {
                        IpadCarouselView()
                    }
                    HStack{
                        Text("Section").padding()
                        Spacer()
                    }
                        .font(.system(size: 20.8))
                        .bold()
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack{
                            PremiumView(PremiumText1: "Testa", PremiumText2: "Tronco",PremiumColor: CustomColor.myColor3, ShowAlert: false)
                            PremiumView(PremiumText1: "Arto Superiore", PremiumText2: "Arto Inferiore",PremiumColor: CustomColor.myColor, ShowAlert: false)
                        }
                        }
                }//End VStack
                
            }.navigationTitle("BioReality")
                
            //End ScrollView
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
