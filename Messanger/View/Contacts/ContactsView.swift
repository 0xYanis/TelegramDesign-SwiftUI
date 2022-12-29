//
//  ContactsView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct ContactsView: View {
	
	@State var searchString: String = ""
	
    var body: some View {
		NavigationView {
			ContacstListView()
			
			.navigationBarTitle(Text("Contacts"), displayMode: .inline)
			.navigationBarItems(
				leading:
					Button("Sort") {
						// some code
					},
				trailing:
					Button(action: {
						// some code
					}) {
						Image(systemName: "plus")
						}
			)
		}
		.searchable(text: $searchString) {
			// some code
		}
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}
