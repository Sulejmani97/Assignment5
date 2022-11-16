//
//  PresidentDetailView.swift
//  Assignment 5
//
//  Created by Destin Sulejmani //

import SwiftUI

struct PresidentDetailView: View {
    
    var president: PresidentViewModel
    
    // Formatter to convert presidents number to ordianl
    var numberFormat: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        
        
        return formatter.string(from: NSNumber(value: president.number)) ?? ""
            }
   
    
    var body: some View {
        
        // Formatting to show presidents custom page
        VStack(spacing: 16) {
            Text(president.name)
                .padding()
                .offset(y: 20)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            Text("\(numberFormat) President of the United States")
                    .bold()
            
            HStack {
                Text("(\(president.startDate)")
                    .italic()
                Text("to")
                    .italic()
                Text("\(president.endDate))")
                    .italic()
            }
            AsyncImage(url: URL(string: president.url))
            { image in
                image.resizable()
                    .scaledToFit()
                    .cornerRadius(10)
            } placeholder: {
                ProgressView()
                    
            }
            .padding(.horizontal)
            Text("Nickname")
                .bold()
            
            Text(president.president.nickName)
            
            Text("Political Party")
                .bold()
            
            Text(president.politicalParty)
            
            Spacer()
        }
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: PresidentViewModel.default)
    }
}
