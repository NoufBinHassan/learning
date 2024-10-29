//
//  LearningTask.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import Foundation
import SwiftUI

enum Duration: String {
    case week = "Week"
    case month = "Month"
    case year = "Year"
}

struct LearningTask {
    var name: String
    var selectedDuration: Duration?
    
    init(name: String = "", selectedDuration: Duration? = nil) {
        self.name = name
        self.selectedDuration = selectedDuration
    }
}
