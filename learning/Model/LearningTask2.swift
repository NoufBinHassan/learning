//
//  LearningTask2.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import Foundation
import Foundation
import SwiftUI

enum LearningDuration: String {
    case week = "Week"
    case month = "Month"
    case year = "Year"
}

struct LearningTask2 {
    var noteText: String
    var selectedDuration: LearningDuration?
    
    init(noteText: String = "", selectedDuration: LearningDuration? = nil) {
        self.noteText = noteText
        self.selectedDuration = selectedDuration
    }
}
