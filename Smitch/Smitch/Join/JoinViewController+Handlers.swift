//
//  JoinViewController+Handlers.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import Foundation

extension JoinViewController {
    func setupHandlers() {
        joinButton.addTarget(self, action: #selector(handleButtonPress), for: .touchUpInside)
    }
    
    @objc func handleButtonPress() {
        let watchVC = WatchViewController()
        watchVC.channelName = channelTextField.text!
        navigationController?.pushViewController(watchVC, animated: true)
    }
}
