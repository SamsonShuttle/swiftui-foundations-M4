//
//  DataService.swift
//  Lesson 13 Recipe List App
//
//  Created by Samson Shuttle on 08/02/2022.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Check if pathString is not nil, otherwise...
        guard pathString != nil else {
            return [Recipe]()  //...return empty recipe list
        }
        
        // Create a url object
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Create a data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with json decoder
            let decoder = JSONDecoder()
            
            do {
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // add the unique ID
                for r in recipeData {
                    r.id = UUID()
                    
                    for i in r.ingredients {
                        i.id = UUID()
                    }
                }
                
                // return the recipes
                return recipeData
            }
            catch {
                // error withparsing json
                print(error)
            }

            
        }
        catch {
            // error with getting data
            print(error)
        }
        return [Recipe]()
        
    }
    
}
