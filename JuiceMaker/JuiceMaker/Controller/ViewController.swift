//
//  JuiceMaker - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var strawberryJuiceButton: UIButton!
    @IBOutlet var bananaJuiceButton: UIButton!
    @IBOutlet var pineappleJuiceButton: UIButton!
    @IBOutlet var kiwiJuiceButton: UIButton!
    @IBOutlet var mangoJuiceButton: UIButton!
    @IBOutlet var strawNanaJuiceButton: UIButton!
    @IBOutlet var mangKiJuiceButton: UIButton!
    
    let strawberryJuice = Juice(name: "딸기", recipe: [.strawberry: 16])
    let bananaJuice = Juice(name: "바나나", recipe: [.banana: 2])
    let kiwiJuice = Juice(name: "키위", recipe: [.kiwi: 3])
    let pineappleJuice = Juice(name: "파인애플", recipe: [.pineapple: 2])
    let mangoJuice = Juice(name: "망고", recipe: [.mango: 3])
    let strawNanaJuice = Juice(name: "딸바", recipe: [.strawberry: 10, .banana: 1])
    let mangKiJuice = Juice(name: "망키", recipe: [.mango: 2, .kiwi: 1])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tabStrawberryJuiceButton(_ sender: UIButton) {
        
    }
    @IBAction func tabBananaJuiceButton(_ sender: UIButton) {
    }
    @IBAction func tabPineappleJuiceButton(_ sender: UIButton) {
    }
    @IBAction func tabKiwiJuiceButton(_ sender: UIButton) {
    }
    @IBAction func tabMangoJuiceButton(_ sender: UIButton) {
    }
    @IBAction func tabStrawNanaJuiceButton(_ sender: UIButton) {
        
    }
    @IBAction func tabMangKiJuiceButton(_ sender: UIButton) {
    }
    
    
    
    
    
}
