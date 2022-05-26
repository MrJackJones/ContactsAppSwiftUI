//
//  ContactListView.swift
//  ContactsAppSwiftUI
//
//  Created by Ivan on 26.05.2022.
//

import SwiftUI

struct ContactListView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            NavigationLink(destination: ContactDetailsView(contact: contact)) {
                Text("\(contact.fullName)")
            }
        }
        .listStyle(.plain)
    }
}

struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contacts: Person.getContactList())
    }
}
