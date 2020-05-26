//
//  generateUserId.swift
//  Smitch
//
//  Created by Matheus Cardoso on 5/6/20.
//  Copyright © 2020 Matheus Cardoso. All rights reserved.
//

import Foundation

func generateUserId(length: Int = 10) -> String {
  let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
