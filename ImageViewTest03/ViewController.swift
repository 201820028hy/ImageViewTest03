//
//  ViewController.swift
//  ImageViewTest03
//
//  Created by dit03 on 2019. 3. 26..
//  Copyright © 2019년 201820028 이혜윤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    var count = 2
    var tf = true
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImageView.image = UIImage(named: "frame1.png")
        myLabel.text = "1"
    }

    @IBAction func ChangeImage(_ sender: Any) {
        
        myImageView.image = UIImage(named: "frame\(count).png")
        myLabel.text = "\(count)"
        
        if (tf == true) {
            count = count + 1
            if(count == 5) {
                tf = false
            }
        }else {
            count -= 1
            if(count == 1) {
                tf = true
            }
        }
        
        
        
    }
    
}

