//
//  CircularShape.swift
//  CircularSwiftUI
//
//  Created by Alperen Kavuk on 14.09.2022.
//

import SwiftUI

import Foundation


struct CircularShabe: Shape {
    
    var percent : Double
    var starangle : Double
    
    typealias AnimatableData = Double
    var animatableData: Double{
        get {
            return percent
        }
        set{
            percent = newValue   
        }
    }

    
    init(percent : Double = 100 ,startangle : Double = -90){
        self.percent = percent
        self.starangle = startangle
        
        
    }
    func path(in rect: CGRect) -> Path {
        
        let width = rect.width
        let height = rect.height
        let radius = min(height,width) / 2
        let center = CGPoint(x: width / 2, y: height / 2)
        let endangle = (self.percent / 100 * 360) + self.starangle
        
        return Path { path in
            path.addArc(center: center, radius: radius, startAngle: Angle(degrees: starangle), endAngle: Angle(degrees: endangle), clockwise: false)
        }
    }
    
   
    
}
