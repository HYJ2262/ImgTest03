//
//  ViewController.swift
//  ImgTest03
//
//  Created by D7703_24 on 2019. 3. 26..
//  Copyright © 2019년 D7703_24. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    //이미지를 담는 그릇
    var count = 1
    var dis = true
    
    @IBOutlet weak var myTextLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myImageView.image = UIImage(named:"frame1.png")
        myTextLable.text = "1"
    }
    @IBAction func ChangeImage(_ sender: Any) {
        
        if count == 5{
            dis = false
        }else if count == 1 {
            dis = true
        }
        
        if dis == true{
            count += 1
        }
        else if dis == false{
            count -= 1
        }

        myImageView.image = UIImage(named:"frame\(count).png")
        
        myTextLable.text = String(count)
    }
    

}

