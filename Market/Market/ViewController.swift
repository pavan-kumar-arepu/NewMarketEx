//
//  ViewController.swift
//  Market
//
//  Created by Mona on 10/18/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
  // var model: [Any]? = [Model]()
    var model = [Model]()
    var modelDict:[String:Model] = [:]
  //  var marketDetails = MarketsDetails(Markets:[Model]())
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        service()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dataCell", for: indexPath)
        
        let details = model[indexPath.row]
        //cell.textLabel?.text = details.
        // cell.textLabel?.text = details.Name
        
        return cell
    }
    
    
    
    func service(){
        
        guard let url  = URL(string:"https://www.worldcoinindex.com/apiservice/v2getmarkets?key=VpRQLlzQfzjY22GSCmxuRv5Wjv7CWo0yj4f&fiat=btc") else { return }
        
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if error != nil {
                print("DataTask error", error!)
                
            } else {
                do {
                    // make sure this JSON is in the format we expect
                   let result = try JSONDecoder().decode(MarketsDetails.self, from: data!)
                    /*
                     let str = String(decoding: data!, as: UTF8.self)
                     let data = Data(str.utf8)
                     if let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any] {
                         // try to read out a string array
                         if let marketsModel = json["Markets"] as? [Any] {
                             self.model = marketsModel
                             print(marketsModel)
                         }
                     }
                     */
                }
//                do{
//
//                    // self.marketDetails.Markets
//                    let jsonData   = try JSONDecoder().decode([Model].self, from: data!)
//                    print(jsonData)
//
//                    DispatchQueue.main.async {
//
//                        self.tableView.reloadData()
//                    }
//
//                }
                catch {
                    print(error)
                }
                
            }
        }.resume()
        
    }
}
