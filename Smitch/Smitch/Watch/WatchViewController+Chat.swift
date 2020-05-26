//
//  WatchViewController+Chat.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/21/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import StreamChatClient
import StreamChatCore

extension WatchViewController {
    func setupChat() {
        let channel = Client.shared.channel(type: .livestream, id: channelName)
        chatViewController.presenter = ChannelPresenter(channel: channel)
    }
}
