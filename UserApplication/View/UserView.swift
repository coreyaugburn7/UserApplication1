//
//  UserView.swift
//  UserApplication
//
//  Created by Corey Augburn on 7/28/22.
//

import SwiftUI

struct UserView: View {
    
    @StateObject var viewModel = UserViewModel()
    var firstName = ""
    
    var body: some View {
        List {
            ForEach(viewModel.users, id: \.self) { user in
                Text("User Id: " + String(user.id))
                Text("Group Name: "  + user.groupName)
                Text("Designation: "  + (user.designation ?? ""))
                
            }
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
