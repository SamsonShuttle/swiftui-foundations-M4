//
//  Recipe.swift
//  Lesson 13 Recipe List App
//
//  Created by Samson Shuttle on 06/02/2022.
//

import Foundation

class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var ingredients:[String]
    var directions:[String]

}
