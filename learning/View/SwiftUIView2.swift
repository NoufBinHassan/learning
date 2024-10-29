//
//  SwiftUIView2.swift
//  learning
//
//  Created by Nouf Bin Hassan on 28/10/2024.
//SwiftUIView2

import SwiftUI

struct SwiftUIView2: View {
    @StateObject private var viewModel = SwiftUIViewModel()
    
    var body: some View {
        VStack {
            Text(viewModel.currentDateText)
                .foregroundColor(.gray)
                .padding(.leading, -180)
            
            HStack {
                Text("Learning Swift")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 32))
                
                NavigationLink(destination:  LastPage()) {
                    ZStack {
                        Circle()
                            .fill(Color(red: 44/255, green: 44/255, blue: 46/255))
                            .frame(width: 150, height: 60)
                        Text("🔥")
                            .font(.system(size: 40))
                    }
                }
            }
            
            VStack {
                HStack {
                    Text(viewModel.monthYearText)
                        .foregroundColor(.white)
                        .padding(.leading, -170)
                        .bold()
                    Image(systemName: "arrow.right")
                        .foregroundColor(.orange)
                        .padding(.leading, -40)
                }
                
                HStack {
                    // Day buttons, e.g., SUN, MON, etc.
                    ForEach(1...7, id: \.self) { day in
                        DayView(day: day, isToday: day == 4, color: viewModel.circle2Color)
                    }
                }
                
                HStack {
                    VStack {
                        Text("\(viewModel.count)🔥")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 25))
                        Text("Day Streak")
                            .foregroundColor(.gray)
                    }
                    .padding(.leading)
                    
                    VStack {
                        Text("\(viewModel.count2)🧊")
                            .foregroundColor(.white)
                            .bold()
                            .font(.system(size: 25))
                        Text("Day Freezed")
                            .foregroundColor(.gray)
                    }
                    .padding(.leading, 100)
                }
            }
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 3)
                    .frame(width: 400, height: 170)
            )
            
            ZStack {
                Circle()
                    .fill(viewModel.circleColor)
                    .frame(width: 320, height: 320)
                    .onTapGesture {
                        viewModel.logAsLearned()
                    }
                Text(viewModel.displayText)
                    .font(.system(size: 50))
                    .bold()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(viewModel.boxColor)
                    .frame(width: 151, height: 52)
                    .onTapGesture {
                        viewModel.freezeDay()
                    }
                Text("Freeze Day")
                    .foregroundColor(Color(uiColor: UIColor(red: 10/255, green: 132/255, blue: 255/255, alpha: 1)))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct DayView: View {
    let day: Int
    let isToday: Bool
    let color: Color
    
    var body: some View {
        VStack {
            Text(getDayString())
                .foregroundColor(.white)
            ZStack {
                Circle()
                    .fill(isToday ? color : .black)
                    .frame(width: 44, height: 44)
                Text("\(day)")
                    .foregroundColor(isToday ? .white : .blue)
            }
        }
    }
    
    func getDayString() -> String {
        let dayStrings = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
        return dayStrings[day - 1]
    }
}

#Preview {
    SwiftUIView2()
}
