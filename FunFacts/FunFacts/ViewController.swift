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
    let arr: [String] = ["A","B","C","D","E","F","G"]
    var cur: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        funFactLabel.text = arr[cur]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFact() {
        if (cur + 1) > arr.count - 1 {
            cur = 0
        } else {
            cur += 1
        }
        funFactLabel.text = arr[cur]
    }
    
}

