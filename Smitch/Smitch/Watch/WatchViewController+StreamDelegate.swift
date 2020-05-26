//
//  WatchViewContoller+StreamDelegate.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/24/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import VoxeetSDK

extension WatchViewController: VTConferenceDelegate {
    func streamAdded(participant: VTParticipant, stream: MediaStream) {
        switch stream.type {
        case .ScreenShare:
            videoView.alpha = 1
            videoView.attach(participant: participant, stream: stream)
        default:
            break
        }
    }
    
    func streamUpdated(participant: VTParticipant, stream: MediaStream) {

    }
    
    func streamRemoved(participant: VTParticipant, stream: MediaStream) {
        switch stream.type {
        case .ScreenShare:
            videoView.alpha = 0
        default:
            break
        }
    }
}
