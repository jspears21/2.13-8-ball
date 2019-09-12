//
//  ViewController.swift
//  2.13 8 ball
//
//  Created by Jared Spears on 9/11/19.
//  Copyright © 2019 Jared Spears. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var index = -1
    var newIndex = -1
    var randomStart = Int.random(in: 0...5)
    var answers = ["Without a doubt",
                    "Outlook not so good",
                    "It is certain",
                    "Ask again later",
                    "Signs point to yes"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {
        if randomStart > answers.count-1 {
            randomStart = 0
        }
        label.text = answers[randomStart]
        viewer.image = UIImage(named: "img\(randomStart)")
        randomStart += 1
        
        
        
        
        
    }
    
}

