//
//  WatchViewController+Views.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

extension WatchViewController {
    func setupViews() {
        setupVideoView()
        setupChatView()
    }
    
    func setupVideoView() {
        view.addSubview(videoView)
    }
    
    func setupChatView() {
        addChild(chatViewController)
        view.addSubview(chatViewController.view)
    }
}
