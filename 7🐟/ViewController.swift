//
//  ViewController.swift
//  7🐟
//
//  Created by 梁飞涛 on 2016/11/1.
//  Copyright © 2016年 梁飞涛. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cyan
        
        let title = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 40))
        title.text = "这是一个Title"
        title.sizeToFit()
        title.center = view.center
        view.addSubview(title)
        
        let title2 = UILabel(frame: CGRect(x: 0, y: 0, width: title.frame.size.width, height: title.frame.size.height))
        title2.text = "这是一个Title x 2"
        title2.sizeToFit()
        title2.center = CGPoint(x: title.center.x, y: title.center.y + 40)
        view.addSubview(title2)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

