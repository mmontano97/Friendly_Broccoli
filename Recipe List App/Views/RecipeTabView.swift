//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by michael montano on 2021-03-24.
//

import SwiftUI

struct RecipeTabView: View {
    
    
    
    var body: some View {
        
        TabView{
            
            RecipeFeatureView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
        RecipeListView()
            .tabItem {
                VStack {
                    Image(systemName: "list.bullet")
                    Text("List")
                }
            }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
