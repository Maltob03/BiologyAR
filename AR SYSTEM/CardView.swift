//
//  CardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//
//TODO:
//Carousel
//NEW PAGE
//3D MODEL
//AR


import SwiftUI

//Struct for custom color
struct CustomColor {
    static let myColor = Color("CardColor1")
    static let myColor2 = Color("CardColor2")
}

struct CardView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical){
                Spacer().frame(height: 30)
                VStack{
                    NavigationLink(destination: DetailView()) {
                        SingleCardView(text: "Circulatory System", text2: "heart",color: CustomColor.myColor)
                                    }
                    
                    Spacer().frame(height:50)
                    Text("Premium Assets")
                        .font(.system(size: 20.8))
                        .bold()
                        .position(x:100, y: 0)
                    PremiumView(PremiumText1: "Skeleton 2,99$", PremiumText2: "Skeleton 1,99$")
                    PremiumView(PremiumText1: "Skeleton 2,99$", PremiumText2: "Skeleton 1,99$")
                    
                }//End VStack
                
            }.navigationTitle("AR Biology")
                .searchable(text: $searchText)
            //End ScrollView
        }//End NavigationView
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
