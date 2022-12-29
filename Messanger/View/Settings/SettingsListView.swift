//
//  SettingsListView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct SettingsListView: View {
    var body: some View {
		List {
			Section {
				Button(action: {
					// some code
				}) {
					HStack {
						Image(systemName: "camera")
						Text("Change Profile Photo")
							.foregroundColor(.accentColor)
					}
				}
			}
			Section {
				Button(action: {
					// some code
				}) {
					HStack {
						Image(systemName: "arrow.down.message.fill")
							.foregroundColor(.white)
							.padding(2)
							.background(Color(.systemBlue))
							.cornerRadius(5)
						Text("Saved Messages")
							.foregroundColor(.black)
					}
				}
				Button(action: {
					// some code
				}) {
					HStack {
						Image(systemName: "phone.fill")
							.foregroundColor(.white)
							.padding(2)
							.background(Color(.systemGreen))
							.cornerRadius(5)
						Text("Recent Calls")
							.foregroundColor(.black)
					}
				}
				Button(action: {
					// some code
				}) {
					HStack {
						Image(systemName: "macbook.and.iphone")
							.foregroundColor(.white)
							.padding(2)
							.background(Color(.systemOrange))
							.cornerRadius(5)
						Text("Devices")
							.foregroundColor(.black)
					}
				}
				Button(action: {
					// some code
				}) {
					HStack {
						Image(systemName: "folder.fill")
							.foregroundColor(.white)
							.padding(2)
							.background(Color(.blue))
							.cornerRadius(5)
						Text("Chat Folders")
							.foregroundColor(.black)
					}
				}
			}
		}
		.listStyle(DefaultListStyle())
    }
}

struct SettingsListView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsListView()
    }
}
