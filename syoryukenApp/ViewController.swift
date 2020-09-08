//
//  ViewController.swift
//  syoryukenApp
//
//  Created by 磯部直 on 2020/09/08.
//  Copyright © 2020 isobe.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var imageArrayAttack : Array<UIImage> = []

    @IBOutlet var charaImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        while let attackImage = UIImage(named: "attak\(imageArrayAttack.count+1)") {
            imageArrayAttack.append(attackImage)
        }


    }
    

    @IBAction func attackButton(_ sender: Any) {
//      アニメーションの適用
        charaImage.animationImages = imageArrayAttack
        
//      1秒間隔
        charaImage.animationDuration = 1
        
//      一回繰り返し
        charaImage.animationRepeatCount = 1
        
//      アニメーションを開始
        charaImage.startAnimating()
        
    }
    
    
}

