//
//  SampleHandler.swift
//  Broadcast
//
//  Created by Matheus Cardoso on 5/24/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import ReplayKit
import VoxeetScreenShareKit
class SampleHandler: RPBroadcastSampleHandler, VoxeetScreenShareKitDelegate {
    private var screenShareService: VoxeetScreenShareKit?
    override func broadcastStarted(withSetupInfo setupInfo: [String : NSObject]?) {
        screenShareService = VoxeetScreenShareKit(appGroup: "group.so.cardo.Smitch.Group")
        screenShareService?.delegate = self
        screenShareService?.broadcastStarted(withSetupInfo: setupInfo)
    }
    override func broadcastPaused() {
        screenShareService?.broadcastPaused()
    }
    override func broadcastResumed() {
        screenShareService?.broadcastResumed()
    }
    override func broadcastFinished() {
        screenShareService?.broadcastFinished()
    }
    override func processSampleBuffer(_ sampleBuffer: CMSampleBuffer, with sampleBufferType: RPSampleBufferType) {
        screenShareService?.processSampleBuffer(sampleBuffer, with: sampleBufferType)
    }
    func finishBroadcastWithError(error: Error) {
        self.finishBroadcastWithError(error)
    }
}
