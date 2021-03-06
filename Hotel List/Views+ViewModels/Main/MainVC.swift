//
//  MainVC.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-09.
//

import UIKit
import RappleProgressHUD

class MainVC: UIViewController {
    
    let mainVM = MainVM();
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide empty cells in tableview
        tableview.tableFooterView = UIView()
        
        // Fetch items
        itemsRequest()
    }
    
}

extension MainVC: UITableViewDelegate, UITableViewDataSource{
    
    // NumberOfRows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainVM.dataArray?.count ?? 0
    }
    
    // Cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTVC
        cell.cellConfiguration(item: (mainVM.dataArray?[indexPath.row])!)
        return cell
    }
    
    // Handle cell select
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsVC
        detailsVC.item = (mainVM.dataArray?[indexPath.row])!
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}

extension MainVC {
    
    func itemsRequest() {
        RappleActivityIndicatorView.startAnimating()
        mainVM.itemsNetworkRequest(completion: { success in
            RappleActivityIndicatorView.stopAnimation()
            if success {
                self.tableview.reloadData()
            }
        })
    }
    
}

