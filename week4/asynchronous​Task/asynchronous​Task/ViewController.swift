//
//  ViewController.swift
//  asynchronous​Task
//
//  Created by Max Kai on 2020/9/28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var IDLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getTakaoData()
    }

    struct takaoData: Decodable {
         var stationID: String
         var stationName: String
         var stationAddress: String
     }
    
    func getTakaoData() {
        let url = URL(string: "https://stations-98a59.firebaseio.com/practice.json")!
//        將網址組成一個 URLRequest
        var request = URLRequest(url: url)
//        設置請求的方法為 GET
        request.httpMethod = "GET"
//        建立 URLSession
        let session = URLSession.shared
//        使用 sesstion + request 組成一個 task並設置好，當收到回應時，需要處理的動作
        let dataTask = session.dataTask(with: request, completionHandler: { (data, response, error) -> Void in
//            如果是空的直接 return
            guard let data = data else {
                return
            }
            do {
//                使用 JSONDecoder 去解開 data
                if let takaoData = try? JSONDecoder().decode(takaoData.self, from: data) {
                    print(takaoData)
//                改變 UI 的動作必須在主線程完成，所以將下面的 code 包在 DispatchQueue.main.async 的大括號裡面
                    DispatchQueue.main.async {
                    self.nameLabel.text = takaoData.stationName
                    self.IDLabel.text = takaoData.stationID
                    self.addLabel.text = takaoData.stationAddress
                    }
                } else {
                    print(error!)
                }
                
    
            }
        })
        dataTask.resume()
    }
}





