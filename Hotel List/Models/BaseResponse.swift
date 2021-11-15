//
//  BaseResponse.swift
//  Hotel List
//
//  Created by Dushan on 2021-11-15.
//

import Foundation

struct BaseResponse: Codable {
    
    var data: [Hotel]?
    var status: Int?
    
}
