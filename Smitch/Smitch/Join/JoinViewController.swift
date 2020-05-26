//
//  ViewController.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/5/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import UIKit

class JoinViewController: UIViewController {
    let channelTextField = UITextField()
    let joinButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Join Channel"
        
        setupViews()
        setupConstraints()
        setupHandlers()
    }
}
