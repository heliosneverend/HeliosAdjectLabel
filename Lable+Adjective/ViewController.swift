//
//  ViewController.swift
//  Lable+Adjective
//
//  Created by RRD on 2018/4/10.
//  Copyright © 2018年 ZYF. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var myLabel: AdjectiveLable = self.createLabel()
    func createLabel() -> AdjectiveLable {
        let label = AdjectiveLable(frame:CGRect(x: 10,y:100,width:self.view.bounds.size.width-20 ,height:100))
        label.backgroundColor = UIColor.red
        return label
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       self.view.addSubview(myLabel)
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

