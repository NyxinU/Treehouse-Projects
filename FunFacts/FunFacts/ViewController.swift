//
//  ViewController.swift
//  FunFacts
//
//  Created by Nix on 9/13/18.
//  Copyright © 2018 NXN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    let colorProvider = BackgroundColorProvider()
    let arr = FactProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = arr.arr[Int.random(in: 0 ..< arr.arr.count)]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        funFactLabel.text = arr.arr[Int.random(in: 0 ..< arr.arr.count)]
        
        let randomColor = colorProvider.randomColor()
        
        view.backgroundColor = randomColor
    }
}

