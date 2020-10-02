//
//  ViewController.swift
//  TableView
//
//  Created by Max Kai on 2020/9/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
//    每個 Section裡面會有幾列
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
//    設定高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
//    設定 cell裡面顯示的東西
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = "This is section 0, row \(indexPath.row)"
        return cell!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//       設置委任對象，告訴UITableView委派物件為何，遵守上述協定的ViewController
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    

    @IBOutlet weak var myTableView: UITableView!
    
    
    
    

    
    
    
    
    

}

