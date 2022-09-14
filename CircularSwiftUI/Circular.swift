//
//  Circular.swift
//  CircularSwiftUI
//
//  Created by Alperen Kavuk on 14.09.2022.
//

import SwiftUI

struct Circular: View {
    let lineWidth: CGFloat
    let backgroundColor : Color
    let foregroundColor : Color
    let percentage : Double
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
            CircularShabe().stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(backgroundColor)
                
                CircularShabe(percent: percentage ).stroke(style: StrokeStyle(lineWidth: lineWidth)).fill(foregroundColor)
            }.animation(.easeIn(duration: 1.0), value: percentage)
            
            .padding()
        }
        
    }
    
}

struct Circular_Previews: PreviewProvider {
    static var previews: some View {
        Circular(lineWidth: 20, backgroundColor: .red, foregroundColor: .gray, percentage: 50)
    }
}
