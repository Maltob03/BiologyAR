//
//  PremiumView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct PremiumView: View {
    @State var PremiumText1: String
    @State var PremiumText2: String
    @State var PremiumColor: Color
    @State var ShowAlert: Bool
    
    
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle()
                        .fill(PremiumColor)
                        .frame(width: 161, height: 77)
                        .cornerRadius(25)
                    Text(PremiumText1).fontWeight(.bold)
                }.padding(.horizontal)//End of ZStack
                    .onTapGesture {
                        ShowAlert = true
                    }
                    .alert("Do You want to buy this item?", isPresented: $ShowAlert) {
                        Button("No") { }
                        Button("Yes") { }
                        
                    }
                ZStack{
                    Rectangle()
                        .fill(PremiumColor)
                        .frame(width: 161, height: 77)
                        .cornerRadius(25)
                    Text(PremiumText2).fontWeight(.bold)
                }.padding(.horizontal)
                    .onTapGesture {
                        ShowAlert = true
                    }
                    .alert("Do You want to buy this item?", isPresented: $ShowAlert) {
                                Button("No") { }
                                Button("Yes") { }
                            
                    }//End of ZStack
                
                
            }//End HStack
        }//End of VStack
    }
}

struct PremiumView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumView(PremiumText1: "Brain 1,99$", PremiumText2: "Skeleton 2,99$",PremiumColor: CustomColor.myColor, ShowAlert: false)
    }
}
