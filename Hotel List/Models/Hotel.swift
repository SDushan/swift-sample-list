//
//  Hotel.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-09.
//

import Foundation

struct Hotel: Codable {
    
    var id: Int?
    var title: String?
    var description: String?
    var address: String?
    var postcode: String?
    var phoneNumber: String?
    var latitude: String?
    var longitude: String?
    var image: ImageSet?
    
}
