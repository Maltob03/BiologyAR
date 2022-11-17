//
//  SingleCardView.swift
//  AR SYSTEM
//
//  Created by Matteo Altobello on 16/11/22.
//

import SwiftUI

struct SingleCardView: View {
    @State var text: String
    @State var text2: String
    @State var color: Color
    var body: some View {
        ZStack{
            Rectangle()
                .fill(color)
                .frame(width: 356, height: 376)
                .cornerRadius(25)
            VStack{
                Text(text).offset(x:0,y:10).fontWeight(.bold)
                Image(text2).resizable().scaledToFit()
            }
            
        }
    }
}

struct SingleCardView_Previews: PreviewProvider {
    static var previews: some View {
        SingleCardView(text: "Circulatory System", text2: "heart", color: CustomColor.myColor)
    }
}
