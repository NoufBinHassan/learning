//
//  SwiftUIView.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // ZStack of circle and emoji
                ZStack {
                    Circle()
                        .fill(Color(red: 44/255, green: 44/255, blue: 46/255))
                        .frame(width: 118, height: 118)
                    Text("🔥")
                        .font(.system(size: 60))
                }
                .padding(.top, -150)
                
                Text("Hello Learner!")
                    .font(.system(size: 32))
                    .bold()
                    .foregroundColor(.white)
                    .padding(.leading, -150)
                
                Text("This app will help you learn everyday")
                    .foregroundColor(Color(red: 72/255, green: 72/255, blue: 74/255))
                    .padding(.leading, -80)
                
                Text("I want to learn")
                    .padding(.all)
                    .foregroundColor(.white)
                    .padding(.leading, -190)
                
                // TextField with placeholder
                ZStack(alignment: .leading) {
                    if viewModel.noteText.isEmpty {
                        Text("Swift")
                            .foregroundColor(.gray)
                    }
                    TextField("", text: $viewModel.noteText)
                        .foregroundColor(.black)
                }
                .padding(.leading)
                
                Text("I want to learn it in a ")
                    .foregroundColor(.white)
                    .padding(.leading, -170)
                
                // HStack for week, month, year
                HStack {
                    // Button 1
                    Button(action: {
                        viewModel.selectButton1()
                    }) {
                        Text("Week")
                            .foregroundColor(.black)
                            .padding()
                            .background(viewModel.buttonColor1)
                            .cornerRadius(10)
                    }
                    
                    // Button 2
                    Button(action: {
                        viewModel.selectButton2()
                    }) {
                        Text("Month")
                            .foregroundColor(.black)
                            .padding()
                            .background(viewModel.buttonColor2)
                            .cornerRadius(10)
                    }
                    
                    // Button 3
                    Button(action: {
                        viewModel.selectButton3()
                    }) {
                        Text("Year")
                            .foregroundColor(.black)
                            .padding()
                            .background(viewModel.buttonColor3)
                            .cornerRadius(10)
                    }
                }
                .padding(.leading, -150)
                
                // NavigationLink for Start button
                NavigationLink(destination:
                                //change destination
                                SwiftUIView2()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(red: 255/255, green: 159/255, blue: 10/255))
                            .frame(width: 151, height: 52)
                        HStack {
                            Text("Start")
                            Image(systemName: "arrow.right")
                        }
                    }
                }
                .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.black)
            .ignoresSafeArea()
        }
    }
}

#Preview {
    SwiftUIView()
}
