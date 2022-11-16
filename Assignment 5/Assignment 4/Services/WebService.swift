//
//  WebService.swift
//  Assignment 5
//
//  Created by Destin Sulejmani on 11/15/22.
//

import Foundation

class WebService {
    
    // function to get JSON from URL
    func fetchPresidents(url: URL?) async throws -> [USPresident] {
        
        // Return empty array
        guard let url = url else {
            return []
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let presidents = try? JSONDecoder().decode([USPresident].self,
                                                   from: data)
        return presidents ?? []
        
    }
    
    
    
}
