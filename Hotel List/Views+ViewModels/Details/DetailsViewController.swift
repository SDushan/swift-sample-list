//
//  DetailsViewController.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-15.
//

import UIKit

class DetailsViewController: UIViewController {
    
    var item = Hotel()
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var details: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Change navigation title
        navigationItem.title = "Details"
        
        setupUI()
    }
    
    // Draw UI
    func setupUI() {
        image.setImageWithUrl(urlString: item.image?.medium ?? "", placeholderImage: UIImage(named: "placeholder")!)
        name.text = item.title
        details.text = item.description
    }
    
}
