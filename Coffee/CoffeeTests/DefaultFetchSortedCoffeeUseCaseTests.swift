//
//  DefaultFetchSortedCoffeeUseCaseTests.swift
//  CoffeeTests
//
//  Created by 조성민 on 12/24/24.
//

import XCTest
@testable import Coffee

final class DefaultFetchSortedCoffeeUseCaseTests: XCTestCase {
    
    private var sut: DefaultFetchLatteCoffeeUseCase!
    private var stubRepository: CoffeeRepository!
    
    override func setUpWithError() throws {
        stubRepository = StubCoffeeRepository()
        sut = DefaultFetchLatteCoffeeUseCase(coffeeRepository: stubRepository)
    }

    func test_execute() async {
        do {
            let modelList = try await sut.execute()
            XCTAssertEqual(modelList, CoffeeModel.mockLatte)
        } catch {
            XCTFail("테스트 실패")
        }
    }
    
}
