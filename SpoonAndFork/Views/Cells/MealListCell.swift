//
//  MealListCell.swift
//  SpoonAndFork
//
//  Created by Раджаб Магомедов on 16.03.2025.
//

import SwiftUI

struct MealListCell: View {
    
    let meal: Meals
    
    var body: some View {
        
        HStack {
            MealRemoteImage(urlString: meal.imageURL)
                .scaledToFit()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(meal.name)
                    .font(.title2)
                    .fontWeight(.medium)
                    .bold()
                Text("\(meal.price, specifier: "%.0f") ₽")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}

#Preview {
    MealListCell(meal: MockData.sampleMeal)
}
