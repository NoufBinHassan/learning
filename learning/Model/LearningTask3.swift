//
//  LearningTask3.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import Foundation
import Foundation
import SwiftUI

enum LearningDuration2: String {
    case week = "Week"
    case month = "Month"
    case year = "Year"
}

struct LearningTask3 {
    var noteText: String = ""
    var duration: LearningDuration = .week
    var buttonColor1: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    var buttonColor2: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    var buttonColor3: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    
    mutating func updateDuration(_ newDuration: LearningDuration) {
        duration = newDuration
        resetButtonColors()
        
        // Update button colors based on selected duration
        switch newDuration {
        case .week:
            buttonColor1 = Color(red: 255/255, green: 159/255, blue: 10/255)
        case .month:
            buttonColor2 = Color(red: 255/255, green: 159/255, blue: 10/255)
        case .year:
            buttonColor3 = Color(red: 255/255, green: 159/255, blue: 10/255)
        }
    }
    
    private mutating func resetButtonColors() {
        buttonColor1 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor2 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor3 = Color(red: 44/255, green: 44/255, blue: 46/255)
    }
}
