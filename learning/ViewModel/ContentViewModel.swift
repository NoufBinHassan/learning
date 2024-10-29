//
//  ContentViewModel.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import Foundation
import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var noteText = ""
    @Published var buttonColor1: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @Published var buttonColor2: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    @Published var buttonColor3: Color = Color(red: 44/255, green: 44/255, blue: 46/255)
    
    func selectButton1() {
        buttonColor1 = Color(red: 255/255, green: 159/255, blue: 10/255)
        buttonColor2 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor3 = Color(red: 44/255, green: 44/255, blue: 46/255)
    }
    
    func selectButton2() {
        buttonColor1 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor2 = Color(red: 255/255, green: 159/255, blue: 10/255)
        buttonColor3 = Color(red: 44/255, green: 44/255, blue: 46/255)
    }
    
    func selectButton3() {
        buttonColor1 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor2 = Color(red: 44/255, green: 44/255, blue: 46/255)
        buttonColor3 = Color(red: 255/255, green: 159/255, blue: 10/255)
    }
}
