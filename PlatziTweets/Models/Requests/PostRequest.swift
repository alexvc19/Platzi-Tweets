//
//  PostRequest.swift
//  PlatziTweets
//
//  Created by Alejandro Velasco on 01/07/20.
//  Copyright © 2020 Alejandro Velasco. All rights reserved.
//

import Foundation

struct PostRequest: Codable {
    let text: String
    let imageUrl: String?
    let videoUrl: String?
    let location: PostRequestLocation?
}
