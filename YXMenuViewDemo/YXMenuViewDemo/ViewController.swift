//
//  ViewController.swift
//  YXMenuViewDemo
//
//  Created by ShinCurry on 16/3/16.
//  Copyright © 2016年 ShinCurry. All rights reserved.
//

import UIKit
import YXMenuView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        menuView.delegate = self
        menuView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var menuView: YXMenuView!
    
    
    var titleForSections = ["Location", "Time", "Company"]
    var titleForRows = [
        ["Chongqing", "San Francisco", "Beijing", "Los Angeles", "Hongkong"],
        ["Morning", "Afternoon", "Night"],
        ["Apple", "Google", "Microsoft", "Yahoo", "IBM", "Dell"]]
}

extension ViewController: YXMenuViewDelegate, YXMenuViewDataSource {
    func numberOfSectionsInYXMenuView(menuVIew: YXMenuView) -> Int {
        return titleForSections.count
    }
    
    func menuView(menuView: YXMenuView, numberOfRowsInSection section: Int) -> Int {
        return titleForRows[section].count
    }
    
    func menuView(menuView: YXMenuView, titleForHeaderInSection section: Int) -> String {
        return titleForSections[section]
    }
    
    func menuView(menuView: YXMenuView, titleForRowAtIndexPath indexPath: NSIndexPath) -> String {
        return titleForRows[indexPath.section][indexPath.row]
    }
}