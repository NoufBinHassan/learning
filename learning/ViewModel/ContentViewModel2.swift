//
//  ContentViewModel2.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import Foundation
import SwiftUI

class SwiftUIViewModel: ObservableObject {
    @Published var circle2Color: Color = .black
    @Published var count = 10
    @Published var count2 = 2
    @Published var circleColor = Color.orange
    @Published var boxColor = Color(red: 193/255, green: 221/255, blue: 255/255)
    @Published var displayText = "Log Today as learned"
    @Published var currentDateText = "Wednesday,11 SEP"
    @Published var monthYearText = "September 2024"
    
    func logAsLearned() {
        circle2Color = (circle2Color == .black) ? .orange : .black
        count += 1
        circleColor = .gray
        displayText = "Day Learned!"
    }
    
    func freezeDay() {
        circle2Color = (circle2Color == .black) ? .blue : .black
        count2 += 1
        circleColor = .gray
        boxColor = .gray
        displayText = "Day Freezed!"
    }
}
