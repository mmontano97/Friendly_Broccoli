//
//  ContentView.swift
//  Recipe List App
//
//  Created by michael montano on 2021-03-17.
//

import SwiftUI

struct RecipeListView: View {
    
    @EnvironmentObject var model:RecipeModel
    
    var body: some View {
        
        
        
        NavigationView {
            VStack(alignment: .leading) {
                Text("All Recipes")
                    .fontWeight(.bold)
                    .padding(.top, 40)
                    .font(.largeTitle)
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(model.recipes) { r in
                            NavigationLink(
                                destination: RecipeDetailView(recipe: r),
                                label: {
                                    HStack(spacing: 20.0) {
                                        Image(r.image)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            .clipped()
                                            .cornerRadius(15)
                                        
                                        Text(r.name)
                                            .foregroundColor(.black)
                                    }
                                })
                            
                        }.navigationBarHidden(true)
                    }
                }
            }.padding(.leading)
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
            .environmentObject(RecipeModel())
    }
}
