//
//  ContentView.swift
//  ContactsAppSwiftUI
//
//  Created by Ivan on 26.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    let contacts = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactListView(contacts: contacts)
                    .navigationTitle("Contact List")
                    .tabItem {
                        Image(systemName: "person.3")
                        Text("Contacts")
                    }
                SectionTableView(contacts: contacts)
                    .navigationTitle("Contact List")
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
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
