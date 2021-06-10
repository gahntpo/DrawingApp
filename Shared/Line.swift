//
//  Line.swift
//  DrawingApp
//
//  Created by Karin Prater on 10.06.21.
//

import Foundation
import SwiftUI

struct Line: Identifiable {
    var points: [CGPoint]
    var linewidth: CGFloat
    var color: Color
    let id = UUID()
}
