//
//  ViewController.swift
//  7🐟
//
//  Created by 梁飞涛 on 2016/11/1.
//  Copyright © 2016年 梁飞涛. All rights reserved.
//

import UIKit

let TITLE_1 = "这是一个Title"
let TITLE_2 = "这是一个Title x 2"
let TITLE_3 = "这是一个Title x 3"
let MYBUTTON = "自定义Button"

class ViewController: UIViewController ,UITableViewDataSource ,UITableViewDelegate{

    var tableDataSource = [TITLE_1,TITLE_2,TITLE_3,MYBUTTON]
    private var tableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.cyan
        
        tableView = UITableView(frame: view.bounds)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = tableDataSource[indexPath.row]
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(tableDataSource[indexPath.row])
        
        if tableDataSource[indexPath.row] == MYBUTTON{
            navigationController?.pushViewController(MYButtonController(), animated: true)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

