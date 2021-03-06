//
//  MonViewController.swift
//  ITServices GO
//
//  Created by Thomas Hunt on 15/05/17.
//  Copyright © 2017 EMBL. All rights reserved.
//

import UIKit
import os.log

class MonViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var caught_message: UILabel!
    @IBOutlet weak var fact: UITextView!
    
    var mon: Mon?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        image.image = (mon?.getFoundImage())!
        caught_message.text = "You caught a \(String(describing: mon?.getName()))"
        fact.text = mon?.getFact()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
