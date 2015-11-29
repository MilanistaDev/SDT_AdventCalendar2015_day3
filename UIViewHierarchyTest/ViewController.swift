//
//  ViewController.swift
//  UIViewHierarchyTest
//
//  Created by 麻生 拓弥 on 2015/11/29.
//  Copyright © 2015年 麻生 拓弥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    let metroLineNameArray = ["Ginza Line", "Marunouchi Line", "Hibiya Line", "Tozai Line", "Chiyoda Line",
                              "Yurakucho Line", "Hanzomon Line", "Nanboku Line", "Fukutoshin Line"]
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.showsVerticalScrollIndicator = false
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: false)
    }
    
    // MARK: - UICollectionViewDelegate Protocol
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell:MetroCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("MetroCell", forIndexPath: indexPath) as! MetroCollectionViewCell
        
        // セルの内容
        cell.metroLineLabel.text = metroLineNameArray[indexPath.row]
        if (indexPath.row == 0) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.95, green: 0.59, blue: 0.00, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.95, green: 0.59, blue: 0.00, alpha: 0.2)
        } else if (indexPath.row == 1) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.90, green: 0.00, blue: 0.07, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.90, green: 0.00, blue: 0.07, alpha: 0.2)
        } else if (indexPath.row == 2) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.61, green: 0.68, blue: 0.72, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.61, green: 0.68, blue: 0.72, alpha: 0.2)
        } else if (indexPath.row == 3) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.00, green: 0.65, blue: 0.86, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.00, green: 0.65, blue: 0.86, alpha: 0.2)
        } else if (indexPath.row == 4) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.00, green: 0.60, blue: 0.27, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.00, green: 0.60, blue: 0.27, alpha: 0.2)
        } else if (indexPath.row == 5) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.84, green: 0.77, blue: 0.28, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.84, green: 0.77, blue: 0.28, alpha: 0.2)
        } else if (indexPath.row == 6) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.61, green: 0.49, blue: 0.71, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.61, green: 0.49, blue: 0.71, alpha: 0.2)
        } else if (indexPath.row == 7) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.00, green: 0.68, blue: 0.66, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.00, green: 0.68, blue: 0.66, alpha: 0.2)
        } else if (indexPath.row == 8) {
            cell.metroLineColorView.backgroundColor = UIColor(red: 0.73, green: 0.39, blue: 0.11, alpha: 1.0)
            cell.backgroundColor = UIColor(red: 0.73, green: 0.39, blue: 0.11, alpha: 0.2)
        }
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9;
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        
        // Util からでディスプレイサイズ取得
        // Width はそれを使い，高さは適当に返してやる
        let returnSize = CGSize(width: Util.returnDisplaySize().width, height: 100)
        
        return returnSize
    }
    
}

