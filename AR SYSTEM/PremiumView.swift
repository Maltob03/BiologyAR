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
    var body: some View {
        VStack{
            HStack{
                ZStack{
                    Rectangle()
                        .fill(CustomColor.myColor2)
                        .frame(width: 161, height: 77)
                        .cornerRadius(25)
                    Text(PremiumText1).fontWeight(.bold)
                }//End of ZStack
                ZStack{
                    Rectangle()
                        .fill(CustomColor.myColor2)
                        .frame(width: 161, height: 77)
                        .cornerRadius(25)
                    Text(PremiumText2).fontWeight(.bold)
                }
                
            }//End HStack
            
        }
    }
}

struct PremiumView_Previews: PreviewProvider {
    static var previews: some View {
        PremiumView(PremiumText1: "Brain 1,99$", PremiumText2: "Skeleton 2,99$")
    }
}
