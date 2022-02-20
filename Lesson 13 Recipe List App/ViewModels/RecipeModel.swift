//
//  RecipeModel.swift
//  Lesson 13 Recipe List App
//
//  Created by Samson Shuttle on 08/02/2022.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init() {
        
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
        
    }
    
}
