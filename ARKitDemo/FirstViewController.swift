//
//  FirstViewController.swift
//  ARKitDemo
//
//  Created by shuidi_iMac on 2017/8/3.
//  Copyright © 2017年 shuidi_iMac. All rights reserved.
//

import UIKit

class FirstViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate{
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    lazy var dataList:[String] = {
        return ["1","2","3"];
    }();
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell");
        if cell == nil {
            cell = UITableViewCell(style: UITableViewCellStyle.default,reuseIdentifier:"Cell");
        }
        return cell!;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let secondVC = SecondViewController();
        self.navigationController?.pushViewController(secondVC, animated: true);
    }
    

}
