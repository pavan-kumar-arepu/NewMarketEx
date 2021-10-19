//
//  Service.swift
//  Market
//
//  Created by Mona on 10/18/21.
//

import UIKit

// make a url session

//https://www.worldcoinindex.com/apiservice/v2getmarkets?key={key}&fiat=btc
//
struct Service {
    
    func service(){
    
     let url = URL(string: "https://www.worldcoinindex.com/apiservice/v2getmarkets?key={key}&fiat=btc")
    
    // comes with data
        let task = URLSession.shared.dataTask(with: url!){ (data, response, error) in
           
            if error == nil {
                
            }
        }}}
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
//            if error != nil {
//                print("Something wrong")
//                return
//            }
//            do{
//                let result = try JSONDecoder().decode([Model].self, from: data!)  //Decode the Jsonresponse and start the task.
//                    print(result)
//            } catch{
//            }
//        }
//
//
//    task.resume()
//
 
   

