//
//  StubCoffeeRepository.swift
//  Coffee
//
//  Created by 조성민 on 12/24/24.
//

@testable import Coffee

final class StubCoffeeRepository: CoffeeRepository {
    
    func fetchCoffeeList() async throws -> [Coffee.CoffeeModel] {
        return CoffeeModel.mockAll
    }
    
}
