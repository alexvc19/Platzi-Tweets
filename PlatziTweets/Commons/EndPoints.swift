//
//  EndPoints.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 01/07/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

struct Endpoints {
    static let domain = "https://platzi-tweets-backend.herokuapp.com/api/v1"
    static let login = Endpoints.domain + "/auth"
    static let register = Endpoints.domain + "/register"
    static let getPosts = Endpoints.domain + "/posts"
    static let post = Endpoints.domain + "/posts"
    static let delete = Endpoints.domain + "/posts/"
}
