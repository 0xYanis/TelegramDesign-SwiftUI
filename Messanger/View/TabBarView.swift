//
//  TabBarView.swift
//  Messanger
//
//  Created by User on 28.12.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
		TabView {
			ContactsView()
				.tabItem {
					Label("Contacts", systemImage: "person.crop.circle.fill")
				}
			
			CallsView()
				.tabItem {
					Label("Calls", systemImage: "phone.fill")
				}
			
			ChatsView()
				.tabItem {
					Label("Chats", systemImage: "message.fill")
				}
			
			SettingsView()
				.tabItem {
					Label("Settings", systemImage: "gear")
				}
		}
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
