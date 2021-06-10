//
//  CColorPicker.swift
//  DrawingApp
//
//  Created by Karin Prater on 10.06.21.
//

import SwiftUI

struct CColorPicker: View {
    let colors:  [Color] = [.gray, .black, .cyan, .teal ,.blue, .green, .yellow, .orange, .red, .purple, .brown]
    
    @Binding var selctedColor: Color
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            HStack {
                ForEach(colors, id: \.self) { c in
                    c.frame(width: 40, height: 40)
                        .border(c == selctedColor ? Color.white :  Color.clear, width: 4)
                        .shadow(radius: 2)
                        .onTapGesture {
                            selctedColor = c
                        }
                }
            }.padding()
            
        }
    }
}

struct CColorPicker_Previews: PreviewProvider {
    @State static private var slectedColor = Color.purple
    static var previews: some View {
        CColorPicker(selctedColor: $slectedColor)
    }
}
