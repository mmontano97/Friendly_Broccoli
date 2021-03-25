//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by michael montano on 2021-03-18.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading) {
                
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
            
            
            VStack(alignment: .leading) {
                Text("Ingredients")
                    .font(.headline)
                    .padding([.top,.bottom], 5)
                ForEach (recipe.ingredients) { item in
                    Text("- " + item.name)
                        
                }
            }.padding([.leading, .trailing], 10)
                Divider()
            VStack(alignment: .leading) {
                Text("Directions")
                    .font(.headline)
                    .padding([.bottom, .top], 5)
                ForEach(0..<recipe.directions.count, id: \.self) { index in
                    Text(String(index+1) + ". " + recipe.directions[index])
                        .padding(.bottom, 5)
                    
                }
            }.padding([.leading, .trailing], 10)
            }
            
            
        }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
