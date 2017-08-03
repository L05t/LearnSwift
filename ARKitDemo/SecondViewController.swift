//
//  SecondViewController.swift
//  ARKitDemo
//
//  Created by shuidi_iMac on 2017/8/3.
//  Copyright © 2017年 shuidi_iMac. All rights reserved.
//

import UIKit

let KSecondVCCollectionViewCell = "SecondVCCollectionViewCell";

class SecondViewController: BaseViewController,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:50,height:50)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 10
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        collectionView.setCollectionViewLayout(layout, animated: true);
        collectionView.register(SecondVCCollectionViewCell.self, forCellWithReuseIdentifier:KSecondVCCollectionViewCell);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10;
    }


    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: KSecondVCCollectionViewCell, for: indexPath)
        cell.backgroundColor = UIColor.purple;
        return cell;
    }

    
}
