//
//  Recipe Model.swift
//  Recipe List App
//
//  Created by michael montano on 2021-03-17.
//

import Foundation

class RecipeModel: ObservableObject {
    @Published var recipes = [Recipe]()
    
    init() {
        
        
        self.recipes = DataService.getLocalData()
        
    }
    
}
