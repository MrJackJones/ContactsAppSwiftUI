//
//  ContactDetailsView.swift
//  ContactsAppSwiftUI
//
//  Created by Ivan on 26.05.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    let contact: Person
    
    var body: some View {
        List {
            HStack {
               Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .padding()
               Spacer()
            }
            ContactRowView(text: contact.phoneNumber, imageName: "phone")
            ContactRowView(text: contact.email, imageName: "tray")
        }
        .navigationTitle(contact.fullName)
    }
}

struct ContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(contact: Person.getContact())
    }
}
