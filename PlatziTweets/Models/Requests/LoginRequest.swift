//
//  LoginRequest.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 01/07/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

struct LoginRequest: Codable {
    let email: String
    let password: String
}
