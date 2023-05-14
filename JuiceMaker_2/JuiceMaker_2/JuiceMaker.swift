//
//  JuiceMaker.swift
//  JuiceMaker_2
//
//  Created by Whales on 2023/05/11.
//

struct JuiceMaker {
    var fruitStore: FruitStore
    
    init(store: FruitStore) {
        self.fruitStore = store
    }
    
    mutating func takeOrder(_ juice: Juice) {
        do {
            try makeJuice(juice)
            print("\(juice.name) 쥬스가 완성되었습니다.")
        } catch JuiceMakerError.invalidFruit {
            print("올바르지 않은 과일 이름입니다.")
        } catch JuiceMakerError.invalidJuice {
            print("올바르지 않은 쥬스 이름입니다.")
        } catch {
            print("알 수 없는 에러입니다.")
        }
    }
    
    mutating func makeJuice(_ juice: Juice) throws {
        for (fruit, amount) in juice.recipe {
            if !fruitStore.compareAmount(fruit, with: amount) {
                try fruitStore.increaseFruitStock(fruit, amount: amount)
            } else {
                try fruitStore.decreaseFruitStock(fruit, amount: amount)
            }
        }
    }
}
