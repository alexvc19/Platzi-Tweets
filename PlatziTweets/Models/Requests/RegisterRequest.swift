//
//  RegisterRequest.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 01/07/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

struct RegisterRequest: Codable {
    let email: String
    let password: String
    let names: String
}
