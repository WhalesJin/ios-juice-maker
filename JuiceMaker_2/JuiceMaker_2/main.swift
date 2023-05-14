//
//  main.swift
//  JuiceMaker_2
//
//  Created by Whales on 2023/05/11.
//

var whales: FruitStore = FruitStore(fruitInventory: [.strawberry: 10, .banana: 10, .kiwi: 10, .mango: 10, .pineapple: 10])
var qoocrab: JuiceMaker = JuiceMaker(store: whales)

let strawberryJuice = Juice(name: "딸기", recipe: [.strawberry: 16])
let bananaJuice = Juice(name: "바나나", recipe: [.banana: 2])
let kiwiJuice = Juice(name: "키위", recipe: [.kiwi: 3])
let pineappleJuice = Juice(name: "파인애플", recipe: [.pineapple: 2])
let mangoJuice = Juice(name: "망고", recipe: [.mango: 3])
let strawNanaJuice = Juice(name: "딸바", recipe: [.strawberry: 10, .banana: 1])
let mangKiJuice = Juice(name: "망키", recipe: [.mango: 2, .kiwi: 1])

print(whales.fruitInventory)
qoocrab.takeOrder(strawNanaJuice)
print(whales.fruitInventory)



