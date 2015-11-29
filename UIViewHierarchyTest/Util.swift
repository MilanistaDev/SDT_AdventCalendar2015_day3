//
//  Util.swift
//  UIViewHierarchyTest
//
//  Created by 麻生 拓弥 on 2015/11/29.
//  Copyright © 2015年 麻生 拓弥. All rights reserved.
//

import UIKit

class Util: NSObject {

    /**
     * 使用端末のディスプレイサイズを返す
     * @return displaySize (.width と .height)
     */
    class func returnDisplaySize() -> CGSize {
        let displaySize = UIScreen.mainScreen().bounds.size
        
        return displaySize
    }
}
