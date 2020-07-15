//
//  ViewController.swift
//  FlutterMixProject-Swift
//
//  Created by junchao on 2020/7/14.
//  Copyright © 2020 qihoo. All rights reserved.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let btn = UIButton(type: .custom)
        btn.frame  = CGRect(x: 100, y: 200, width: 200, height: 44)
        btn.backgroundColor = .black
        btn.setTitle("弹出Flutter视图", for: .normal);
        btn.addTarget(self, action: #selector(showFlutterVc), for: .touchUpInside)
        self.view.addSubview(btn)
        
    }
    
    @objc func showFlutterVc() {
        let flutterVc = FlutterViewController(engine: fetchFlutterEngine(), nibName: nil, bundle: nil)
        self.present(flutterVc, animated: true, completion: nil)
    }
    
    func fetchFlutterEngine() -> FlutterEngine {
        return (UIApplication.shared.delegate as! AppDelegate).flutterEngine
    }

}

