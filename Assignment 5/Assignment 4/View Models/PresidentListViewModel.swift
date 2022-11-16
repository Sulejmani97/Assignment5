//
//  ViewModel.swift
//  Assignment 5
//
//  Created by Destin Sulejmani on 11/3/22.
//

import Foundation

class PresidentListViewModel: ObservableObject {
    
    @Published var presidents: [PresidentViewModel] = []
    
    
    // func to load the JSON
    func getPresidents() async {
      
    
        do {
            var presidents = try await WebService().fetchPresidents(url: Constants.Urls.presidentsUrl)
            
            
            // Sorts the presidents in alphabetic order
            presidents.sort {
                $0.number < $1.number
            }
            
            self.presidents = presidents.map(PresidentViewModel.init)
            
        } catch {
            print(error)
        }
        
        }
        
       
    }

