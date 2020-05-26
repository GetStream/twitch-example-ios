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
        VoxeetSDK.shared.initialize(consumerKey: "ZTBib3I5IaNzmmt0aA==", consumerSecret: "NDUyM2kzjaHRucNvZWxjaHRucG41dmpidnE=")
        VoxeetSDK.shared.appGroup = "group.so.cardo.Smitch.Group"
        VoxeetSDK.shared.preferredExtension = "so.cardo.Smitch.Broadcast"

        Client.configureShared(.init(apiKey: "74e5enp34e52", logOptions: .info))
        Client.shared.set(user: .init(id: generateUserId()), token: .development)
        
        return true
    }

}

