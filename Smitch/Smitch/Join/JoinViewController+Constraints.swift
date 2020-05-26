//
//  JoinViewController+Constraints.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

extension JoinViewController {
    func setupConstraints() {
        view.addConstraints([
            channelTextField.widthAnchor.constraint(equalToConstant: 100),
            channelTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            channelTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            joinButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            joinButton.topAnchor.constraint(equalTo: channelTextField.bottomAnchor)
        ])
    }
}
