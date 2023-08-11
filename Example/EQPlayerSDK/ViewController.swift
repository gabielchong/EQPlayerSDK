//
//  ViewController.swift
//  EQPlayerSDK
//
//  Created by ee4e6114fe20b9a329aff2d7443f7c29ba196f5a on 08/11/2023.
//  Copyright (c) 2023 ee4e6114fe20b9a329aff2d7443f7c29ba196f5a. All rights reserved.
//

import UIKit
import EQPlayerSDK

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let playerView = EQPlayerView()
        playerView.backgroundColor = UIColor.blue
        view.addSubview(playerView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

