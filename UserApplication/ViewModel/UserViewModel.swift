//
//  UserViewModel.swift
//  UserApplication
//
//  Created by Corey Augburn on 7/28/22.
//

import Foundation

class UserViewModel: ObservableObject {
    
    @Published var users: [Result] = []
    
    var data: Data?
    
    func getData(){
        
        guard let url = URL(string: "https://mocki.io/v1/6f225a3e-7016-4d4b-aa9e-f9ddac92e2ce") else {return}
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else {
                return
            }
            do{
                let result = try JSONDecoder().decode([Result].self, from: data)
//                DispatchQueue.main.async {
//                    self.result = data.sorted {$0.firstName < $1.firstName}
//                    print(result)
//                }
            }catch{
                print("Errors in decoding ", error)
            }
        }
        task.resume()
    }
    
}
