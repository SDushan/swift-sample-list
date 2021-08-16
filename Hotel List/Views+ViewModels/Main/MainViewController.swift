//
//  MainViewController.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-09.
//

import UIKit

class MainViewController: UIViewController {
    
    let mainVM = MainVM();
    
    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainVM.data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainCustomCell
        cell.cellConfiguration(item: mainVM.data[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailsVC") as! DetailsViewController
        detailsVC.item = mainVM.data[indexPath.row]
        self.navigationController?.pushViewController(detailsVC, animated: true)
    }
    
}

