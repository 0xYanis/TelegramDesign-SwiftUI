//
//  ContacstListView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct ContacstListView: View {
    var body: some View {
		List {
			Button(action: {
				// code
			}) {
				HStack {
					Image(systemName: "mappin.and.ellipse")
						.frame(width: 33, height: 33)
						.foregroundColor(.accentColor)
					
					Text("Find People Nearby")
						.font(.headline)
						.foregroundColor(.accentColor)
				}
			}
			
			Button(action: {
				// code
			}) {
				HStack {
					Image(systemName: "person.badge.plus")
						.frame(width: 33, height: 33)
						.foregroundColor(.accentColor)
					
					Text("Invite Friends")
						.font(.headline)
						.foregroundColor(.accentColor)
				}
			}
				
			ForEach(messages) { contact in
				HStack {
					Image(contact.fromImage)
						.resizable()
						.aspectRatio(contentMode: .fill)
						.frame(width: 33, height: 33)
						.clipShape(Circle())
						
					VStack (alignment: .leading, spacing: 0) {
						Text(contact.fromName)
							.font(.headline)
						
						Text("last seen recently")
							.font(.callout)
							.foregroundColor(.gray)
							.lineLimit(2)
					}
				}
			}
		}
		.listStyle(.plain)
    }
}

struct ContacstListView_Previews: PreviewProvider {
    static var previews: some View {
        ContacstListView()
    }
}
