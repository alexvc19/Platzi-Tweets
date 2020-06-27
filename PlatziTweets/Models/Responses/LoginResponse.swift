//
//  LogingResponse.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 23/06/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

struct LoginResponse: Codable {
    let user: User
    let token: String
}
