//
//  CoffeeApp.swift
//  Coffee
//
//  Created by 조성민 on 12/22/24.
//

import SwiftUI

@main
struct CoffeeApp: App {
    var body: some Scene {
        WindowGroup {
            MainView(
                viewModel: MainViewModel(
                    useCase: DefaultFetchLatteCoffeeUseCase(
                        coffeeRepository: DefaultCoffeeRepository()
                    )
                )
            )
        }
    }
}
