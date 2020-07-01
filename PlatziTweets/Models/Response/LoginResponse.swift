//
//  LoginResponse.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 01/07/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation
struct LoginResponse: Codable {
    let user: User
    let token: String
}
