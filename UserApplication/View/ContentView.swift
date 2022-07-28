//
//  ContentView.swift
//  UserApplication
//
//  Created by Corey Augburn on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewmodel = UserViewModel()
    
    var body: some View {
        NavigationView{
        List{
                ForEach(viewmodel.users, id: \.self) { user in
                    NavigationLink(destination: UserView( firstName: user.firstName ?? "")){
                Text("User Id: " + String(user.groupName))
                Text("Name: " + (user.firstName ?? ""))
                Text("Email: " + user.email)
                    }.buttonStyle(PlainButtonStyle())
    }
        .navigationTitle("User Applications")
        .onAppear{
            viewmodel.getData()
            }
        }
    }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

