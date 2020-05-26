//
//  WatchViewController.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/5/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import UIKit
import VoxeetSDK
import StreamChat

class WatchViewController: UIViewController {
    var channelName: String = "default"
    
    let voxeet = VoxeetSDK.shared
    let userId = generateUserId()
    let videoView = VTVideoView()
    let chatViewController = ChatViewController()
    
    override var prefersStatusBarHidden: Bool { true }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupChat()
        setupStream()
        setupViews()
        setupConstraints()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
            self.navigationController?.navigationBar.isHidden = true
        }
    }
    
    deinit {
        voxeet.conference.leave()
    }
}
