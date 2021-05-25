//
//  ViewController.swift
//  ExpandCell
//
//  Created by Jeongho Han on 2021-05-25.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    struct ExpandDataModel {
        var description: String
        var isExpand: Bool
    }
    
    var dataModels = [ExpandDataModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let textArray = ["short Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "short Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
                        "long long long long long long long long long long long long long long long long long long long long long long long long long long long  Text",
        ]
        
        for (_,v) in textArray.enumerated() {
            dataModels.append(ExpandDataModel(description: v, isExpand: false))
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell", for: indexPath) as? ExpandCell else{
            return UITableViewCell()
        }
        
        cell.descLabel.text = dataModels[indexPath.row].description
        
        if dataModels[indexPath.row].isExpand == true{
            cell.descLabel.numberOfLines = 0
        }else{
            cell.descLabel.numberOfLines = 1
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dataModels[indexPath.row].isExpand.toggle()
        
        // tableView.reloadData()
        
        UIView.setAnimationsEnabled(false)
        tableView.reloadRows(at: [indexPath], with: .none)
        UIView.setAnimationsEnabled(true)
    }
    
}

class ExpandCell: UITableViewCell{
    @IBOutlet weak var descLabel: UILabel!
    
}
