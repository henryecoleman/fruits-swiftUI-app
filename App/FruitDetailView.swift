//
//  FruitDetailView.swift
//  Fructus
//
//  Created by H Coleman on 23/12/2020.
//

import SwiftUI

struct FruitDetailView: View {
    // PROPERTIES
    var fruit: Fruit
    
    // BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    
                    VStack(alignment: .leading, spacing: 20) {
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitsNutrientsView(fruit: fruit)
                        
                        // SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        
                        // LINK
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                        
                        
                    } // VSTACK END
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                } // VSTACK END
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            } // SCROLL END
            .edgesIgnoringSafeArea(.top)
        } // NAVIGATION END
    }
}
    // PREVIEW


struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
