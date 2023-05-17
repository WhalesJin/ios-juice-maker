//
//  FruitStore.swift
//  JuiceMaker_2
//
//  Created by Whales on 2023/05/11.
//

class FruitStore {
    private var fruitInventory: [Fruit: Int]
    
    init(fruitInventory: [Fruit : Int]) {
        self.fruitInventory = fruitInventory
    }
    
    private func readCurrentStock(for fruit: Fruit) throws -> Int {
        guard let currentAmount = fruitInventory[fruit] else {
            throw FruitStoreError.invalidFruit
        }
        return currentAmount
    }
    
    func isStockSufficient(_ fruit: Fruit, with requiredAmount: Int) throws {
        let currentStock = try readCurrentStock(for: fruit)
        guard currentStock >= requiredAmount else {
            throw FruitStoreError.insufficientFruit
        }
    }
    
    func decreaseFruitStock(_ fruit: Fruit, by amount: Int) throws {
        let currentAmount = try readCurrentStock(for: fruit)
        fruitInventory[fruit] = currentAmount - amount
    }
    
    func increaseFruitStock(_ fruit: Fruit, by amount: Int) throws {
        let currentAmount = try readCurrentStock(for: fruit)
        fruitInventory[fruit] = currentAmount + amount
    }
}
