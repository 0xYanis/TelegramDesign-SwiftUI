//
//  ChatsView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct ChatsView: View {
	
	@State var searchString = ""
	
    var body: some View {
		
		NavigationView {
			MessageListView()
			
				.navigationBarTitle(Text("Chats"), displayMode: .inline)
				.navigationBarItems(
					leading:
						Button("Edit") {
							// some code
						},
					trailing:
						Button(action: {
							// some code
						}) {
							Image(systemName: "square.and.pencil")
						}
				)
		}
		.searchable(text: $searchString) {
			// some code
		}
    }
}

struct ChatsView_Previews: PreviewProvider {
    static var previews: some View {
        ChatsView()
    }
}
