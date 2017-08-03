//
//  SecondVCCollectionViewCell.swift
//  ARKitDemo
//
//  Created by shuidi_iMac on 2017/8/3.
//  Copyright © 2017年 shuidi_iMac. All rights reserved.
//

import UIKit

class SecondVCCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var textLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self .addSubview(textLabel);
    }

}
