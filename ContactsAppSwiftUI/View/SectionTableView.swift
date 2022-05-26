//
//  SectionTableView.swift
//  ContactsAppSwiftUI
//
//  Created by Ivan on 26.05.2022.
//

import SwiftUI

struct SectionTableView: View {
    let contacts: [Person]
    
    var body: some View {
        List(contacts) { contact in
            Section(header: Text("\(contact.fullName)")) {
                ContactRowView(text: contact.phoneNumber, imageName: "phone")
                ContactRowView(text: contact.email, imageName: "tray")
            }
        }
    }
}

struct SectionTableView_Previews: PreviewProvider {
    static var previews: some View {
        SectionTableView(contacts: Person.getContactList())
    }
}
