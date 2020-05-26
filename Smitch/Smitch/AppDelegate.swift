//
//  AppDelegate.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/5/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import UIKit
import VoxeetSDK
import StreamChatClient

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        VoxeetSDK.shared.initialize(consumerKey: "ZTBib3I3NzkzMmt0aA==", consumerSecret: "NDUyM2kzMTc0ZHNvZWxjaHRucG41dmpidnE=")
        VoxeetSDK.shared.appGroup = "group.so.cardo.Smitch.Group"
        VoxeetSDK.shared.preferredExtension = "so.cardo.Smitch.Broadcast"

        Client.configureShared(.init(apiKey: "74e5enp33qj2", logOptions: .info))
        Client.shared.set(user: .init(id: generateUserId()), token: .development)
        
        return true
    }

}

