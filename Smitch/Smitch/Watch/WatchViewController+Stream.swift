//
//  WatchViewController+Stream.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/24/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import VoxeetSDK
import ReplayKit

extension WatchViewController {
    func setupStream() {
        let info = VTParticipantInfo(externalID: userId, name: userId, avatarURL: nil)
        
        voxeet.conference.delegate = self
        voxeet.session.open(info: info) { error in
            self.joinOrCreateConference()
        }
    }
    
    func joinOrCreateConference() {
        let options = VTConferenceOptions()
        options.alias = channelName
        
        voxeet.conference.create(options: options, success: { conf in
            if conf.isNew {
                self.shareScreen(conf: conf)
            } else {
                self.watch(conf: conf)
            }
        }, fail: { error in
            // TODO: Handle errors
        })
    }
    
    func shareScreen(conf: VTConference) {
        self.voxeet.conference.join(conference: conf, success: { conf in
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                self.voxeet.conference.startScreenShare(broadcast: true) { error in
                    // TODO: Handle errors
                }
            }
        }, fail: { error in
            // TODO: Handle errors
        })
    }
    
    func watch(conf: VTConference) {
        self.voxeet.conference.listen(conference: conf, success: { conf in 
            
        }, fail: { error in
            // TODO: Handle errors
        })
    }
}
