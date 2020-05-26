//
//  JoinViewController+Views.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

extension JoinViewController {
    func setupViews() {
        setupChannelTextField()
        setupJoinButton()
    }
    
    func setupChannelTextField() {
        channelTextField.translatesAutoresizingMaskIntoConstraints = false
        channelTextField.becomeFirstResponder()
        
        view.addSubview(channelTextField)
    }
    
    func setupJoinButton() {
        joinButton.translatesAutoresizingMaskIntoConstraints = false
        joinButton.setTitleColor(.systemBlue, for: .normal)
        joinButton.setTitle("Join/Create", for: .normal)
        
        view.addSubview(joinButton)
    }
}
