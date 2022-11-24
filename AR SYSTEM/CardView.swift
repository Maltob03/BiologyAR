//
//  CardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//
//TODO:
//PERFECTING SEARCHBAR
//3D MODEL
//AR


import SwiftUI

//Struct for custom color
struct CustomColor {
    static let myColor = Color("CardColor1")
    static let myColor2 = Color("CardColor2")
    static let myColor3 = Color("CardColor3")
}

struct CardView: View {
    @State private var searchText = ""
    @State private var index = 0
    
    var body: some View {
        NavigationView(){
            ScrollView(.vertical){
                Spacer().frame(height: 30)
                VStack{
                    CarouselView()
                    Spacer().frame(height:50)
                    Text("Premium Assets")
                        .font(.system(size: 20.8))
                        .bold()
                        .position(x:100, y: 0)
                    PremiumView(PremiumText1: "Skeleton 2,99$", PremiumText2: "Skeleton 1,99$",PremiumColor: CustomColor.myColor2, ShowAlert: false)
                    PremiumView(PremiumText1: "Skeleton 2,99$", PremiumText2: "Skeleton 1,99$",PremiumColor: CustomColor.myColor3, ShowAlert: false)
                    
                }//End VStack
                
            }.navigationTitle("BioReality")
                .searchable(text: $searchText)
            //End ScrollView
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
