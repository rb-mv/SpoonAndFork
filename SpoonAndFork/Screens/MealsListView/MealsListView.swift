//
//  SpoonAndForkListView.swift
//  SpoonAndFork
//
//  Created by Раджаб Магомедов on 14.03.2025.
//

import SwiftUI

struct MealsListView: View {
    
    @StateObject var viewModel = MealsListViewModel()
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.meals) {meal in
                    
                    MealListCell(meal: meal)
                    
                }
                .navigationTitle("🍜 Meals")
            }
            .onAppear {
                viewModel.getMeals()
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

#Preview {
    MealsListView()
}
