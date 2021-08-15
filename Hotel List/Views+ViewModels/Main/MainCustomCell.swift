//
//  MainCustomCell.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-10.
//

import UIKit

class MainCustomCell: UITableViewCell {
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func cellConfiguration(item: Hotel) {
        name.text = item.title;
        address.text = item.address;
        thumbnail.setImageWithUrl(urlString: item.image?.small ?? "", placeholderImage: UIImage(named: "placeholder")!)
    }

}
