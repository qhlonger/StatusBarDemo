//
//  ViewController.swift
//  SnapStatusBarDemo
//
//  Created by pingguo on 2018/5/8.
//  Copyright © 2018年 hl. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

  
    var sWindow: UIWindow {
        let window = UIApplication.shared.value(forKey: "statusBarWindow") as! UIWindow
        return window
    }
    var sRect : CGRect = .zero
    
    
    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        sRect = sWindow.frame
        
        let table = UITableView()
        table.frame = view.bounds
        table.delegate = self
        view.addSubview(table)
        
        
//        let alpha0H = 100
        let str = ""
        let a = addSep(str: str, sep: "  ")

        NSLog("%@", NSString.init(string: a))
        
        INT_MAX
        
        let s : Int = myAtoi("   -   255   ")
        
        
    }
    func addSep(str:String, sep:String) -> String{
        var res = ""
        var i = 0
        for s in str{
            res.append(s)
            
            if i < str.count - 1 {
                res.append(sep)
            }
            i = i + 1
        }
        
        return res
    }
    
    func myAtoi(_ str: String) -> Int {
        
        
        
        let string = NSString.init(string: str.trimmingCharacters(in: .whitespaces))
        var resStr = ""
        var length = 0
        
        
        for i in 0...max(string.length, 0) {
            let s  = string.substring(to: i)
            if isPurnInt(string: s){
                
                let l = NSString.init(string: s).length
                if l > length {
                    resStr = s
                    length = l
                }
            }
            
        }
        if resStr != "" {
            return Int(NSString.init(string: resStr).intValue)
        }
        return 0
    }
    func isPurnInt(string: String) -> Bool {
        if string.contains(" ") {
            return false
        }
        let scan: Scanner = Scanner(string: string)
        
        var val:Int = 0
        
        return scan.scanInt(&val) && scan.isAtEnd
        
    }

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let rect = self.sWindow.frame
        
        self.sWindow.frame = CGRect.init(x: 0, y: -scrollView.contentOffset.y, width:rect.width, height: rect.height)

    }

}

