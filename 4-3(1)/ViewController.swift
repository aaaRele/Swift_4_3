//
//  ViewController.swift
//  4-3(1)
//
//  Created by student on 2018/12/5.
//  Copyright © 2018年 Dude. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lable: UILabel!
    var btn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lable = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 44))
        lable.text = "hello world!"
        lable.font = UIFont.systemFont(ofSize:22)
        lable.textColor = UIColor.black
        self.view.addSubview(lable)
        btn = UIButton(frame: CGRect(x: 100, y: 400, width: 50, height: 37))
        btn.setTitle("Click",for: .normal)
        btn.backgroundColor = UIColor.brown
        btn.setTitleColor(UIColor.black, for: .highlighted)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    
    }
    @IBAction func clicked(){
        if lable.text! == "Clicked"{
            lable.text = "hello world!"
            btn.setTitle("Click", for: .normal)
        }else{
            lable.text = "Clicked"
            btn.setTitle("hello", for: .normal)
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}


