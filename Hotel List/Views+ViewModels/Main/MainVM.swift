//
//  MainVM.swift
//  Hotel List
//
//  Created by Dushan on 2021-08-09.
//

import UIKit
import Alamofire

class MainVM: UIViewController {
    
    typealias completionHandler = (_ status: Bool) -> ()
    var dataArray: [Hotel]?
    
    func itemsNetworkRequest(completion: @escaping completionHandler) {
        AF.request("https://dl.dropboxusercontent.com/s/6nt7fkdt7ck0lue/hotels.json", method: .get, parameters: nil, encoding: JSONEncoding.default)
            .responseJSON { response in
                if let data = response.data {
                    do {
                        let decodeJson = JSONDecoder()
                        let responseData: BaseResponse = try decodeJson.decode(BaseResponse.self, from: data)
                        self.dataArray = responseData.data
                        completion(true)
                    } catch  {
                        print(error)
                    }
                }
            }
    }
    
}
