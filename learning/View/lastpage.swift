//
//  lastpage.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import SwiftUI

struct LastPage: View {
    @StateObject private var viewModel = LastPageViewModel()
    
    var body: some View {
        VStack {
            Text("I want to learn")
                .foregroundColor(.white)
                .bold()
                .padding(.leading, -170)
                .padding(.top, -200)
            
            // TextField
            ZStack(alignment: .leading) {
                if viewModel.noteText.isEmpty {
                    Text("Swift")
                        .foregroundColor(.gray) // Placeholder color
                }
                TextField("", text: $viewModel.noteText)
                    .foregroundColor(.black) // Text color
            }
            .padding(.top, -150)
            
            Text("I want to learn it in a ")
                .foregroundColor(.white)
                .bold()
                .padding(.top, -100)
                .padding(.leading, -170)
            
            // HStack for Week, Month, Year buttons
            HStack {
                Button(action: {
                    viewModel.selectDuration(.week)
                }) {
                    Text("Week")
                        .foregroundColor(.black)
                        .padding()
                        .background(viewModel.buttonColor1)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    viewModel.selectDuration(.month)
                }) {
                    Text("Month")
                        .foregroundColor(.black)
                        .padding()
                        .background(viewModel.buttonColor2)
                        .cornerRadius(10)
                }
                
                Button(action: {
                    viewModel.selectDuration(.year)
                }) {
                    Text("Year")
                        .foregroundColor(.black)
                        .padding()
                        .background(viewModel.buttonColor3)
                        .cornerRadius(10)
                }
            }
            .padding(.leading, -120)
            .padding(.top, -70)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

#Preview {
    LastPage()
}
