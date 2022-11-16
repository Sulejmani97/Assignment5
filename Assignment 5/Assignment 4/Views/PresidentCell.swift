//
//  PresidentCell.swift
//  Assignment 5
//
//  Created by Destin Sulejmani
//

import SwiftUI

struct PresidentCell: View {
    
    //create president view
    var president: PresidentViewModel
    
    var body: some View {
        
        HStack {
            AsyncImage(url: URL(string: president.url))
            { image in
                image.resizable() .cornerRadius(6)
            } placeholder: {
                ProgressView()
            }
            .frame(width: 50, height: 50)
            
            
            
            
            //formatting for how presidents are displayed
            VStack(alignment: .leading) {
                Text(president.name)
                    .font(.headline)
                    .fontWeight(.heavy)
                Text(president.politicalParty)
                    .font(.subheadline)
                
            }
        }
    }
}

struct PresidentCell_Previews: PreviewProvider {
    static var previews: some View {
        PresidentCell(president: PresidentViewModel.default)
    }
}
