//
//  WatchViewController+Constraints.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import Foundation

extension WatchViewController {
    func setupConstraints() {
        setupVideoConstraints()
        setupChatConstraints()
    }
    
    func setupVideoConstraints() {
        videoView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            videoView.topAnchor.constraint(equalTo: view.topAnchor),
            videoView.rightAnchor.constraint(equalTo: view.rightAnchor),
            videoView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 1/3),
            videoView.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
    
    func setupChatConstraints() {
        view.addConstraints([
            chatViewController.view.topAnchor.constraint(equalTo: videoView.bottomAnchor),
            chatViewController.view.rightAnchor.constraint(equalTo: view.rightAnchor),
            chatViewController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            chatViewController.view.leftAnchor.constraint(equalTo: view.leftAnchor)
        ])
    }
}
