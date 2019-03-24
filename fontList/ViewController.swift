//
//  ViewController.swift
//  fontList
//
//  Created by 原田悠嗣 on 2019/03/24.
//  Copyright © 2019 原田悠嗣. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var fontName_array:[String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        for fontFamilyName in UIFont.familyNames {
            for fontName in UIFont.fontNames(forFamilyName: fontFamilyName as String) {
                fontName_array.append(fontName)}
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fontName_array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "myCell")
        let fontname = fontName_array[indexPath.row]
        cell.textLabel?.font = UIFont(name: fontname, size: 18)
        cell.textLabel?.text = "012345 ABCDE あいうえお　憲法"
        cell.detailTextLabel?.textColor = UIColor.brown
        cell.detailTextLabel?.text = fontname
        return cell
    }


}

