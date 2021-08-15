//
//  Extentions.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-15.
//

import Foundation
import SDWebImage

extension UIImageView {
    func setImageWithUrl(urlString: String, placeholderImage: UIImage) {
        if let url = URL(string: urlString) {
            sd_setImage(with: url, placeholderImage:placeholderImage)
        }
    }
}
