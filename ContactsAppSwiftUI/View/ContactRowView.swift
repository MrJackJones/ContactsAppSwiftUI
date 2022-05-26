//
//  ContactRowView.swift
//  ContactsAppSwiftUI
//
//  Created by Ivan on 26.05.2022.
//

import SwiftUI

struct ContactRowView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(systemName: imageName)
                .foregroundColor(.blue)
            Text(text)
        }
    }
}

struct ContactRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(text: "Full Name", imageName: "person")
    }
}
